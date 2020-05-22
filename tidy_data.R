# loading necessary libraries in R
library(dplyr)
library(readr)
library(readxl)
library(tidyr)

#loading data in R
Sales_data <- read.csv("D://Sales_Data//Sales_April_2019.csv" , header = TRUE)
head(Sales_data)


# using spread function
#--key refers to the column to be  spread,, --value takes the measurement of the column being spread. 
Sales_data <- spread(Sales_data,key = "Order.Date",value ="measurement")
head(Sales_data)

# using separate function
Sales_data <- separate(Sales_data,col = "Order.Date", into = c("Order","Date"),sep = " ")
head(Sales_data)

# using unite function
Sales_data <- unite(Sales_data,col = "Order.Date",5:6,sep = "  ",na.rm = TRUE)
head(Sales_data)

# using gather function 
Sales_data <- gather(Sales_data,key = "Order_Price",3:4, value = "measurement",na.rm = TRUE)
head(Sales_data)
