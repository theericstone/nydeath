# This file will read and transform the full historical
# data files needed for analysis and modeling

library(data.table)
library(plyr)
library(reshape2)
library(stringr)
source("util_functions.R")

# read the csv data in
charges <- data.table(read.csv("data/charges.csv"))
murders <- data.table(read.csv("data/murders.csv"))
dp.status <- data.table(read.csv("data/death_penalty_legality_ny.csv"))

# read the .txt data
size.budget.01 <- rbindlist(lapply(readLines(
  "data/budget_2001/DS0001/03418-0001-Data.txt"),function(row)
    data.table(
      state = substr(row,442,443),
      district = substr(row,451,482),
      full_time_staff_2001 = as.numeric(substr(row,65,68)),
      part_time_staff_2001 = as.numeric(substr(row,69,71)),
      total_budget_2001 = as.numeric(substr(row,121,129))
    )
))[ state == "NY" ]
ny.pop.2001 <- data.table(read.csv("data/ny_county_pulation_2001.csv"))
size.budget.01[ ,district := str_replace_all(district," ",replacement = "") ]
ny.pop.2001[ ,district := str_replace_all(district," ",replacement = "") ]
size.budget.01 <- merge(size.budget.01, ny.pop.2001, by="district")
size.budget.01[total_budget_2001 == 999999999 ]$total_budget_2001 <- NaN

size.budget.05 <- rbindlist(lapply(readLines(
  "data/budget_2005/DS0001/04600-0001-Data.txt"),function(row)
    data.table(
      state = substr(row,19,20),
      district = substr(row,21,68),
      population_2005 = as.numeric(substr(row,73,80)),
      full_time_staff_2005 = as.numeric(substr(row,1848,1855)),
      part_time_staff_2005 = as.numeric(substr(row,1856,1863)),
      total_budget_2005    = as.numeric(substr(row,1912,1919))
    )
))[ state == "NY" ]
size.budget.05[ ,district := str_replace_all(district," ",replacement = "") ]
size.budget.overlap <- merge(size.budget.05,
                             size.budget.01,
                             by=c("state","district"))
size.budget.overlap[,c("staff_2001","staff_2005") := list(
  sum(full_time_staff_2001,part_time_staff_2001),
  sum(full_time_staff_2005,part_time_staff_2005)
  ), by="district" ]
size.budget.overlap <- {
  budget <- melt(size.budget.overlap,
                 id.vars = c("district"),
                 measure.vars = c("total_budget_2005","total_budget_2001"),
                 variable.name = "year",value.name = "budget")
  budget[ ,year := as.numeric(substr(year,14,17)) ]
  
  staff <- melt(size.budget.overlap,
                id.vars = c("district"),
                measure.vars = c("staff_2005","staff_2001"),
                variable.name = "year",value.name = "staff")
  staff[ ,year := as.numeric(substr(year,7,19)) ]
  
  population <- melt(size.budget.overlap,
                     id.vars = c("district"),
                     measure.vars = c("population_2005","population_2001"),
                     variable.name = "year",value.name = "population")
  population[ ,year := as.numeric(substr(year,12,15)) ]
  MergeDataFrames(list(
    budget, population, staff
  ), by = c("district","year"),
  all = FALSE)
}

#show there's no difference between 2001 and 2005 in budget allocation 
hist( (size.budget.overlap$budget )^.4 )
summary(aov( budget ~ year + (population * staff), data = size.budget.overlap))    

# melt the charges frame so it's useful
charges <- melt(charges,
                id.vars = c("charge","county","outcome"),
                value.name = "count",
                variable.name = "year")
charges[ ,year_num := as.numeric(substr(year,2,5)) ]
charges$year <- NULL; setnames(charges, "year_num", "year")
charges <- dcast.data.table(charges, county + year + charge ~ outcome, value.var = "count")
setnames(charges,
         c("region","year","charge","acquitted",
           "convicted_plea","convicted_verdict","dismissed",
           "sentenced_jail","not_prosecuted","other_outcome",
           "sentenced_other","sentenced_prison",
           "sentenced_probation","total_dispositions"))
charges <- charges[ !region %in% c("New York State","Non-New York City","New York City") &
                      !charge == "total" ]

# ditto with the murders frame
murders <- melt(murders,
                id.vars = "region",
                value.name = "n_murders",
                variable.name = "year")[
                  !region %in% c("New York City","Rest of State","New York State")
                ]
murders[ ,year_num := as.numeric(substr(year,2,5)) ]
murders$year <- NULL; setnames(murders, "year_num", "year")

#merge em together!
murders.charges <- merge(murders,
                         charges,
                         by=c("region","year"))
ReplaceValues(murders.charges, NA, 0,
              columns = names(murders.charges)[5:ncol(murders.charges)])

#put in an indicator for which years were death penalty ones
murders.charges <- merge(
  murders.charges,
  rbind(dp.status,data.table(year = 2014,
                             death_penalty_illegal = 1,
                             death_penalty_moratorium = 1,
                             death_status = "illegal")),
  by="year"
)

murders.charges[ convicted_verdict == 1 & charge == "murder_1", .N, by="year,death_status"]
murders.charges[ ,nyc := region %in% c("New York","Queens","Kings","Bronx","Richmond") ]
murders.charges$nyc <- factor(murders.charges$nyc, levels = c(TRUE,FALSE),
                              labels = c("New York City","Other Districts"))
library(ggplot2)
rect_dat <- data.table( start = 1995, end_1 = 2004, end_2 = 2007 )
ggplot( murders.charges[,list(n_murders = sum(n_murders),
                              n_pleas = sum(convicted_plea),
                              n_dispos = sum(total_dispositions)),
                        by="year,nyc,charge"][
                          ,per_pleas := n_pleas / n_dispos ],
        aes(x = year, y = per_pleas, color = charge, fill = charge )) +
  geom_smooth( size = 1.8, se = FALSE ) +
  geom_point( size = 2.6, alpha = .7) +
  facet_grid( ~ nyc ) +
  geom_rect(data=rect_dat, aes(xmin=start, xmax=end_1), 
            ymin=0, ymax=15, alpha=0.3, fill="grey60", inherit.aes = FALSE) +
  geom_rect(data=rect_dat, aes(xmin=end_1, xmax=end_2), 
            ymin=0, ymax=15, alpha=0.3, fill="grey80", inherit.aes = FALSE) +
  ylab("Percent of Dispositions Resulting in Plea") +
  theme( legend.position = "top",
         panel.background = element_blank(),
         axis.ticks = element_blank(),
         axis.text = element_text(size = 11),
         axis.title = element_text(size = 13),
         legend.title = element_blank()) 