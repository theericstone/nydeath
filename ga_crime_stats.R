folder.location <- "~/Desktop/Georgia Crime Data"
file.names <- lapply(seq(1980,2012,1), function(year) file.path(folder.location,paste(year,".csv",sep="")))

#if these fail, run the commented out line, then re-comment it
#install.packages(c("data.table","plyr","reshape2"))
library(data.table)
library(plyr); library(reshape2)

mon <- rep(strptime("01/01/1952", format = "%d/%m/%Y"), 12) 
mon$mon <- mon$mon + 0:11 
mnames <- months(mon, abbreviate = F) 

crime.data <- rbindlist(lapply(file.names, function(year){
  tmp <- fread(year,header=F); setnames(tmp, paste(tmp[2])); tmp <- tmp[-2]
  
  month.col <- paste(unlist(sapply(mnames, function(month){
    last.row <- if(month == "December") nrow(tmp) + 1 else
      which(tmp$County == mnames[ which(mnames == month) + 1 ])
    first.row <- which(tmp$County == month)
    n.rep <- last.row - first.row
    rep(month, n.rep) 
  })))
  
  tmp$Month <- month.col
  tmp <- tmp[ -which(tmp$County %in% c(mnames, "Total", "", "County","Search Again","Go to top of page",
                                       "georgia.gov | Agencies | Privacy/Security | Notices | Accessibility | Contact georgia.gov")) ]
  tmp$Year <- seq(1980,2012,1)[which(year == file.names)]
  tmp
}))

crime.melt <- data.table(
  melt(crime.data, id.vars=c("County","Month","Year")))
setnames(crime.melt, c("value","variable"), c("Count","Crime"))

#totals by month and county and crime
crime.melt[ ,list(Crimes = sum(as.numeric(Count),na.rm=T)), by="Year,Crime,County"]

#total crimes by county by year
crime.melt[ ,list(Crimes = sum(as.numeric(Count),na.rm=T)), by="Year,County"]

#total crimes for the whole state by year by crime cat.
crime.melt[ ,list(Crimes = sum(as.numeric(Count),na.rm=T)), by="Year,Crime"]

#total crimes by year
crime.melt[ ,list(Crimes = sum(as.numeric(Count),na.rm=T)), by="Year"]

