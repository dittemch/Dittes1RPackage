#' Hello. This package is first try to make a package
#'
#' The function returns a sumtable and made for the dataset dafnia
#'
#' @param y is the response variable as col in dataframe
#' @param x1 is factor that needs to group the response together with
#' @param x2 is the same
#'
#' @return Gives sumtable of dafnia grouped by lake and temperature
#' @examples sumtable(dafnia$Feeding,dafnia$Temp,dafnia$Lake) - if you put in a default then write it here
#' @export

hello <- function() {
  print("Hello, world!")
}


sumtable<-function(y,x1,x2){
  SumTable <- aggregate(y,
                        by = list(Lake = x1,
                                  Temp = x2),
                        FUN = function(x)
                          c(mean = mean(x),
                            sd = sd(x),
                            n = length(x)))
  return(SumTable)
}


