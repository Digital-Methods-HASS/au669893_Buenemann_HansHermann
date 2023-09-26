## 1) Use R to figure out how many elements in the vector below are greater than 2.

rooms <- c(1, 5, 2, 1, 3, 1, NA, 3, 1, 3, 2, 1, NA, 1, 8, 3, 1, 4, NA, 1, 3, 
           1, 2, 1, 7, 1, NA)

# Creating a new vector without NA values
rooms_greater_than_2 <- na.omit(rooms)

# How many are greater than 2:
length(rooms_greater_than_2)

# Answer: 23


## 2) Which function tells you the type of data the 'rooms' vector above contains?

typeof(rooms)

# Answer: "double"


## 3) What is the result of running the median() function on the above 'rooms' vector?

median(rooms)

# Answer: NA
# If we want to find the median, we should exclude the NA values, like in Q1.
# We could do that with the following: median((na.omit(rooms)))


## 4) 

install.packages(tidyverse)
library(tidyverse)

# Creating folder called "data"
dir.create("data")

## Putting SAFI_clean in data folder
download.file(
  "https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
  "data/SAFI_clean.csv", mode = "wb"
)

# Reading SAFI_Clean, using underscore to access tidyverse package
read_csv("data/SAFI_clean.csv") 

# Creating the digital object "interviews", so we can work with the data set
interviews <- read_csv("data/SAFI_clean.csv")


## 5) Challenge

read_csv2("data/HW2_due19-09_2_tidyversion.csv")

# Creating tibble "monarker" from data
monarker <- read_csv2("data/HW2_due19-09_2_tidyversion.csv")

# Calculating the mean and median of rule over time
mean(na.omit(monarker$regeringstid))

median(na.omit(monarker$regeringstid))
