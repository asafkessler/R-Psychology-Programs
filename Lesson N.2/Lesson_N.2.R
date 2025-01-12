setwd("C:/Users/asafk/Documents/R-Psychology-Programs/Lesson N.2")
data_df <- read.csv("potter.csv")
print(data_df)
print(class(data_df))
#View(data_df) - a way to show data frames in a XL design way. 

# First Operator $ -- brings back a vector

if(length(data_df$NAME) == length(data_df$GENDER)){
  print("This shit makes sence.")
  print(data_df$GENDER)
  print(class(data_df$NAME))
}

v <- 1
class(v)
class(data_df$NAME)
class(data_df$AGE)

foo_test <- function(df, colname) {
  print(df$colname)
  print(data_df[,colname])
}

foo_test(data_df, "AGE")
