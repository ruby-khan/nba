df = read.csv("/Users/rubykhan/Desktop/Spring 2021/QMSSGR5072_MODERN DATA STRUCTURES/Seasons_Stats_NBA.csv")

#' function_3
#'
#' Your input for this function should be an individual year.  Your function should limit the data for that year to include numeric continuous variables only (not categorical data).  Your output should be the correlation matrix for all numeric variables in the data for that year.  (Hint: use cor(data) to create correlation matrix.  If you feel adventuresome, then you can return a correlogram plot from here (Links to an external site.)Links to an external site. instead).
#' @param df This is the data frame you want to use.
#' @param year Choose a year you are interested in.
#' @export

function_3 = function(df, year){
  # choose only numeric columns
  df_temp = df[,unlist(lapply(df, is.numeric))]
  # subset for specific year
  df_temp_2 = subset(df_temp, Year == year)
  # remove columns with NA values only
  df_temp_3 = df_temp_2[colSums(!is.na(df_temp_2)) > 0]
  # remove year (sd = 0)
  df_temp_4 = subset(df_temp_3, select = -Year)
  # calculate correlation matrix
  cm = cor(df_temp_4, use = 'p')
  # round and return correlation matrix
  return(round(cm, 2))
}
