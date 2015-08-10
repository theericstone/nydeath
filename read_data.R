# This file will read and transform the full historical
# data files needed for analysis and modeling

library(data.table)
library(plyr)
library(reshape2)
source("util_functions.R")

# read the csv data in
charges <- data.table(read.csv("data/charges.csv"))
murders <- data.table(read.csv("data/murders.csv"))

# read the .txt data
rbindlist(lapply(readLines("data/ICPSR_02433-4/DS0001/02433-0001-Data.txt"), function(row){
  data.table()
})

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

# ditto with the murders frame
murders <- melt(murders,
                id.vars = "region",
                value.name = "n_murders",
                variable.name = "year")
murders[ ,year_num := as.numeric(substr(year,2,5)) ]
murders$year <- NULL; setnames(murders, "year_num", "year")


