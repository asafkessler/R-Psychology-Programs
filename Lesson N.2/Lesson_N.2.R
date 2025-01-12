#######################
### R PSYCH - LEC02 ###
### 2024-2025 #########
### Asaf Kessler ######


setwd("C:/Users/asafk/Documents/R-Psychology-Programs/Lesson N.2")
data_df <- read.csv("potter.csv")
print(data_df)
print(class(data_df))

# This is a way to show data frames in XL design in R studio. 
View(data_df) 


# First Operator $ -- brings back a vector

print(names(data_df)) 

# Sending a column \ column name to a function 
foo_test <- function(df, colname) {
  print(df$colname) # brings out NULL
  print(data_df[,colname]) # brings out the data 
}
foo_test(data_df, "AGE") # sending a col name to the function.


if(length(data_df$NAME) == length(data_df$GENDER)){
  print("This shit makes sence:")
  print(data_df$GENDER)
  print(data_df$NAME)
}

# Scale of Data Frame & The function paste 
print(paste("nrow: ", nrow(data_df), " " ,"ncol: ", ncol(data_df)))

# Understanding Classes of Objects
# Logical, Numerical, Character -> Vectors in them 
# have the same class type.
v <- 1
class(v)
class(data_df$NAME)
class(data_df$AGE)


# Understanding Data Structures 
y <- matrix(1:8, nrow = 2, dimnames = list(list("Row1", "Row2"), list("Col1", "Col2", "Col3", "Col4")))
print(y)

x <- array(1:8, dim = c(2, 2, 2))
print(x)

##########################
## Statistical Functions --  Descriptive Statistics 
##########################

data_gcc <- read.csv("GSS2014.csv")

# Create a vector of numeric column names
numeric_columns <- names(data_gcc)[sapply(data_gcc, is.numeric)]

# Print the vector of numeric column names
print("REALINC" %in% numeric_columns)

# Lesson moment : 
# 1) mean NA - empty numbers in a data_frame should be ignored.
print(mean(data_gcc$REALINC, na.rm = TRUE))