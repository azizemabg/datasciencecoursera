

# Data Scientist's Toolbox ####
dir() # list of files in current directory

# simple function ####
myfunction <- function() {
  x <- rnorm(100)
  mean(x)
}

myfunction <- function(x) {
  x <- rnorm(x)
  mean(x)
}

source("rprogramming.R")

secondfunction <- function(x) {
  x <- x + rnorm(length(x))
  print(x)
}
secondfunction(x = 5)

myfunction(x = 10)

getwd()
ls() # list all of stored objects and functions
dir() 

# storing variables ####
x <- c(4, TRUE)
is.numeric(x)

x <- c(1, 3, 5)
y <- c(2, 8, 10)
a <- cbind(x, y)
class(a)

x <- list(2, "a", "b", TRUE)
x
x[[1]]
x <- 1:4
y <- 2
x + y

x <- c(17, 14, 4, 5, 13, 12, 10)
x[x > 10] <- 4
x

data <- read.csv("hw1_data.csv")
data
names(data)

data[1:2, ]
nrow(data)
tail(data, 2)
data[47, ]
sum(is.na(data$Ozone))
mean(data$Ozone, na.rm = TRUE)
data[, data$Ozone > 31 & data$Temp > 90]
mean(subset(data, data$Ozone > 31 & data$Temp > 90)$Solar.R, na.rm = TRUE)

mean(subset(data, data$Month == 6)$Temp, na.rm = TRUE)
max(subset(data, data$Month == 5)$Ozone, na.rm = TRUE)

# SWIRL ####
library(swirl)
ls()
#1 :R Programming: The basics of programming in R
#2: Regression Models: The basics of regression modeling in R
#3: Statistical Inference: The basics of statistical inference in R
#4: Exploratory Data Analysis: The basics of exploring data in R


swirl()
install_from_swirl("R Programming")
install_from_swirl("Regression Models")
install_from_swirl("Statistical Inference")
install_from_swirl("Exploratory Data Analysis")





