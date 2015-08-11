# this is the file to read the data and transform it
library(data.table)
library(ggplot2)

source("util_functions.R")
murder <- fread("data/ny_murder_data.csv")
murder.melt <- MeltDataTable(murder,
                             variable.name="outcome", value.name="n_cases",
                             id.vars=c("year","death_penalty_illegal","death_penalty_moratorium","death_status","dispositions_total"))
murder.melt[ ,p_cases := n_cases/dispositions_total ]
#overall summary of outcomes
ggplot(murder.melt, aes(x=year, y=n_cases, group = outcome, fill = outcome)) +
  geom_area( position = "fill") + theme_bw()

#time series of outcomes
rect_dat <- data.table( start = 1995, end_1 = 2004, end_2 = 2007 )
ggplot(murder.melt, aes(x=year, y=n_cases, group = outcome, color = outcome)) +
  geom_line() + theme_bw() + facet_wrap( ~ outcome, ncol = 3) +
  geom_rect(data=rect_dat, aes(xmin=start, xmax=end_1), 
            ymin=0, ymax=15, alpha=0.3, fill="grey60", inherit.aes = FALSE) +
  geom_rect(data=rect_dat, aes(xmin=end_1, xmax=end_2), 
            ymin=0, ymax=15, alpha=0.3, fill="grey80", inherit.aes = FALSE) +
  theme(legend.position = "none")

#only related to murder 1
ggplot(murder.melt[ outcome %in% c("pled_murder_1","convicted_murder_1") ],
       aes(x=year, y=p_cases, group = outcome, color = outcome)) +
#   geom_smooth(se = FALSE, method = "loess", fullrange=TRUE) + ylim(c(0,8.5)) +
  geom_smooth( se = FALSE, method="loess", size = 1.5 ) + ylim(c(0,1)) +
  geom_point(size = 2, alpha = .4) +
  theme_bw() + facet_grid( ~ outcome ) + 
  geom_rect(data=rect_dat, aes(xmin=start, xmax=end_1), 
            ymin=0, ymax=15, alpha=0.3, fill="grey60", inherit.aes = FALSE) +
  geom_rect(data=rect_dat, aes(xmin=end_1, xmax=end_2), 
            ymin=0, ymax=15, alpha=0.3, fill="grey80", inherit.aes = FALSE) +
  ggtitle("Percentage of Total Murder Trials") +
  theme(legend.position = "none")

pleas <- murder.melt[ outcome %in% c("pled_other","pled_murder_1") ]
pleas[ ,pleas_total := sum(n_cases), by="year" ]
pleas[ ,p_pleas := n_cases / pleas_total ]
ggplot(pleas,
       aes(x=year, y=p_pleas, group = outcome, color = outcome, fill=outcome)) +
  #   geom_smooth(se = FALSE, method = "loess", fullrange=TRUE) + ylim(c(0,8.5)) +
  geom_smooth( se = FALSE, method="loess", size = 1.5 ) + ylim(c(0,1)) +
  geom_point(size = 2, alpha = .4) +
  theme_bw() + facet_grid( ~ outcome ) + 
  geom_rect(data=rect_dat, aes(xmin=start, xmax=end_1), 
            ymin=0, ymax=15, alpha=0.3, fill="grey60", inherit.aes = FALSE) +
  geom_rect(data=rect_dat, aes(xmin=end_1, xmax=end_2), 
            ymin=0, ymax=15, alpha=0.3, fill="grey80", inherit.aes = FALSE) +
  ggtitle("Percentage of Total Pleas Filed") +
  theme(legend.position = "none")

#only pleas
pleas[ ,p_all_pleas := pleas_total / dispositions_total ]
pleas[ year >= 2007 ]$death_status <- "illegal_again"
ggplot(unique(pleas[,list(year,p_all_pleas,death_status)]),
       aes(x=year, y=p_all_pleas, color=death_status)) +
  #   geom_smooth(se = FALSE, method = "loess", fullrange=TRUE) + ylim(c(0,8.5)) +
  geom_smooth( se = FALSE, method="loess", size = 1.5 ) + ylim(c(0,1)) +
  geom_point(size = 2, alpha = .4) +
  theme_bw() + 
  geom_rect(data=rect_dat, aes(xmin=start, xmax=end_1), 
            ymin=0, ymax=15, alpha=0.3, fill="grey60", inherit.aes = FALSE) +
  geom_rect(data=rect_dat, aes(xmin=end_1, xmax=end_2), 
            ymin=0, ymax=15, alpha=0.3, fill="grey80", inherit.aes = FALSE) +
  ggtitle("Percentage of Dispositions that Were Pleas") +
  theme(legend.position = "none")

#for assessing whether outcomes changed as a result of death penalty illegality
murder.skinny <- rbindlist(
  apply(murder.melt[ n_cases > 0 ], 1, function(row)
    data.table(year = row["year"],
               dp_illegal = row["death_penalty_illegal"],
               dp_morat = row["death_penalty_moratorium"],
               dp_status = row["death_status"],
               outcome = rep(row["outcome"],row["n_cases"]))
  ))
murder.skinny$case_id <- 1:nrow(murder.skinny)

ggplot(murder.melt[outcome %in% c("pled_murder_1"),
                   list( n_cases = sum(n_cases),
                         p_cases = sum(n_cases) / sum(dispositions_total) ), by="death_status"],
       aes( x=death_status, y=p_cases)) +
  geom_bar(stat="identity") + theme_bw() +
  ylab("Percent of Dispositions that are Murder Pleas")

dp.illegal.lm <- glm(outcome_fac ~ dp_status,
                     data=murder.skinny[ outcome %in% c("pled_other","pled_murder_1") ][
                       ,outcome_fac := as.numeric(outcome == "pled_murder_1") ],
                     family = "binomial")
summary(dp.illegal.lm)
