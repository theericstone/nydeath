####~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## Helpful functions that don't exist in other packages
## 
## Creator: Eric Stone (ericstone@me.com) 
## melt code inspired by this stackoverflow post:
## http://stackoverflow.com/questions/18449938/pivot-on-data-table-similar-to-rehape-melt-function
####~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#replicates the functionality of hadley's melt but for data tables
#as of april 2014 this is included in the CRAN data.table release
MeltDataTable <- function(dt,
                          variable.name = "variable",
                          value.name = "value",
                          measure.vars = NULL,
                          id.vars = NULL){
  if(is.null(id.vars))
    stop("Sorry, you need to specify the 'id.vars' for this melt.")
  if(is.null(measure.vars))
    measure.vars <- names(dt)[ which(!names(dt) %in% id.vars) ]
  
  dt.melt <- dt[,which(names(dt) %in% c(measure.vars,id.vars)), with=FALSE]
  
  by.statment <- paste(id.vars, collapse=",")
  dt.melt <- dt.melt[ ,list(variable = names(.SD), value = unlist(.SD, use.names = F)),
                     by = by.statment ]
  setnames(dt.melt, c("variable","value"), c(variable.name, value.name))
  return(dt.melt)
}

#Replace NAs with a user-defined value in a Data Table
RemoveNas = function(table = dt,
                      na.to = 0) {
  for (j in seq_len(ncol(table)))
    set(table,which(is.na(table[[j]])),j,na.to)
}

#measures of vectors
Skewness <- function(x){
  xx <- x[!is.na(x)]
  n <- length(xx)
  d <- xx - mean(xx)
  sqrt(n) * sum(d^3)/(sum(d^2)^(3/2))
}

Kurtosis <- function(x){
  xx <- x[!is.na(x)]
  n <- length(xx)
  d <- xx - mean(xx)
  r <- n * sum(d^4)/(sum(d^2)^2)
  r-3
}

Bimodality <- function(x){
  x <- x[!is.na(x)]
  n <- length(x)
  (Skewness(x)^2+1) / (Kurtosis(x) + (3*((n-1)^2) / ((n-2)*(n-3)))) 
}


#merge more than two data frames or tables together
MergeDataFrames <- function(list.of.data.frames,
                            by=NULL,
                            all=NULL){
  if(is.null(by)) stop("You need to explicitly define your 'by' statement")
  if(is.null(all)) {
    all <- FALSE
    message("MergeDataFrames: only complete rows will be returned. Use all=TRUE to return all rows.")
  }
  Reduce(
    function(...) 
      merge(...,
            by=by,
            all=all), 
    list.of.data.frames)
}

#function for rounding any number "x" to the nearest "r" (.1, .01, .5, etc.)
RoundTo <- function(x,r,direction = c("round","ceiling","floor")){ 
  direction <- match.arg(direction)
  init <- switch(direction,
                 round = round(x/r),
                 ceiling = ceiling(x/r),
                 floor = floor(x/r))
  return( init * r )
}
  
#produces expected results for modular arithmetic with non-integer numbers
Mod <- function(n,m){
  if( m >= n ) return(n)
  n.digits <- nchar(strsplit(paste(n),".",fixed=T)[[1]][2])
  div <- floor(n/m)
  rem <- n - (div * m)
  return(round(rem,n.digits))
}

#produces bootstrapped statistics for a vector
BootStrap <- function(fcasts, n.rep = 500, statistic = list(mean, var)){
  if(!is.numeric(fcasts)) stop("You must supply a numeric vector of fcasts of at least length 1")
  straps <- replicate(n=n.rep, sample(fcasts, replace=TRUE))
  boots <- rbindlist( apply(straps, 2, function(x)
    data.table( t(sapply(1: length(statistic), function(op){
      tmp <- data.table(statistic[[op]](x))
      setnames(tmp, paste("stat",op,sep="_"))
      return(tmp)})) ) ) )
  boot.straps <- apply(boots, 2, as.numeric)
  return(data.table(boot.straps))
}

#replace any value with another one in a data.table
ReplaceValues <- function(table = dt,
                          from = NA,
                          to = 0,
                          columns = "all.vars"){
  if(columns[[1]] == "all.vars"){ 
    which.cols <- seq_len(ncol(table))
  } else {
    which.cols <- which(names(table) %in% columns)
  }
  
  if(is.na(from)){
    for (j in which.cols)
      set(table,which(is.na(table[[j]])),j,to)
  } else {
    for (j in which.cols)
      set(table,which(table[[j]] == from),j,to)
  }
}

