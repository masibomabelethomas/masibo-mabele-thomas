
# loading necessary libraries in R
library(dplyr)
library(readr)
library(readxl)
library(tidyr)
library(magrittr)


#loading data in R
Sales_data <- read.csv("D://Sales_Data//Sales_April_2019.csv" , header = TRUE)

# using separate,spread,unite,gather and pip function in data cleansing.
Sales_data <- Sales_data %>%
  Sales_data <- spread(Sales_data,key = "Order.Date",value ="measurement")%>%
  Sales_data <- separate(Sales_data,col = "Order.Date", into = c("Order","Date"),sep = " ") %>%
  Sales_data <- unite(Sales_data,col = "Order.Date",5:6,sep = "  ",na.rm = TRUE)%>%
  Sales_data <- gather(Sales_data,key = "Order_Price",3:4, value = "measurement",na.rm = TRUE)
  head(Sales_data) # to view data

