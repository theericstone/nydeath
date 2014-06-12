require(data.table)
ga.crime <- fread("~/Desktop/Georgia Crime Data/Main Data.csv")[ !(is.na(Year)) ]
setnames(ga.crime, "Murders Resulting in Death Sentences", "n_murder_sent")
murders <- ga.crime[ Murder > 0 ,list(county = County,year = Year,n_murder = Murder,n_murder_sent)]
murders.skinny <- rbindlist(
  lapply(1:nrow(murders), function(row){
    tmp.row <- murders[ row ]
    n.murder.sent <- tmp.row$n_murder_sent
    n.murder.left <- tmp.row$n_murder - n.murder.sent
    data.table(county = tmp.row$county,
               year = tmp.row$year,
               death_sentence = c(rep(0,n.murder.left),
                                  rep(1,n.murder.sent)))
  }) )
murders.skinny$murder_id <- 1:nrow(murders.skinny)

murder.logistic <- 
  glm(death_sentence ~ county + year, data = murders.skinny,
      family=binomial(link='logit'))
murder.lm <- lm(death_sentence ~ county + factor(year), data = murders.skinny)
summary.aov(murder.lm)
