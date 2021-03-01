df = read.csv("/Users/rubykhan/Desktop/Spring 2021/QMSSGR5072_MODERN DATA STRUCTURES/Seasons_Stats_NBA.csv")

#' function_1
#'
#' Your input for this function should be an individual year. Your output should be a data point of interest in the dataset for some player.
#' @param df This is the data frame you want to use.
#' @param year Choose a year you are interested in.
#' @param player Choose a player you are interested in.
#' @export

function_1 = function(df, year, player){
  # choose data point according to input year and player
  df_out = subset(df, Year == year & Player == player)
  return(df_out)
}
