df = read.csv("/Users/rubykhan/Desktop/Spring 2021/QMSSGR5072_MODERN DATA STRUCTURES/Seasons_Stats_NBA.csv")

#' function_2
#'
#' Your input for this function should be an individual year.  Your output should be the oldest player in the NBA data for that year (if multiple players have the same age, then decide how to return a single player).
#' @param df This is the data frame you want to use.
#' @param year Choose a year you are interested in.
#' @export

function_2 = function(df, year){
  # subset to input year
  df_temp = subset(df, Year == year)
  # get row with oldest player
  df_temp_2 = subset(df_temp, Age == max(df_temp$Age, na.rm = T))
  # if more than 1 player, return the one who appears first in the data set
  return(df_temp_2[1,])
}
