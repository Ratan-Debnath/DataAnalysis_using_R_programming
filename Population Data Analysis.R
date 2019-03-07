install.packages("rjson")
install.packages("jsonlite")
library(rjson)
library(jsonlite)
setwd("/home/ratan/Documents/Big Data Training/") 
dataList <- fromJSON(file("population.json"))

#Question 1: Get the details of the Country Name with max value
country_max_value <- subset(dataFrame,dataFrame$Value == max(dataFrame$Value))
country_max_value

#Question 2: Get all the Country Name of year 1990
country_name_1990 <- subset(dataFrame$`Country Name`, dataFrame$Year == "1990")
country_name_1990

#Question 3: Get the Country Name after 1990
country_name_after_1990 <- subset(dataFrame$`Country Name`, dataFrame$Year > "1990")
country_name_after_1990

#Question 4: Get the Country Name with max value of 1990
country_name_max_1990 <- subset(dataFrame$`Country Name`, dataFrame$Year <= "1990")
country_name_max_1990

#Question 5: Get the total value of year between 1990 to 1995
total_value_of_year_between_1990_1995 <- subset(dataFrame, ((dataFrame$Year >= 1990 ) & (dataFrame$Year <= 1995)))
sum(as.numeric(total_value_of_year_between_1990_1995$Value))

#All problems solve by @Arko and @Ratan

