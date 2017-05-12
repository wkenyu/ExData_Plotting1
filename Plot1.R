library(sqldf)
house <- read.csv2.sql("household_power_consumption.txt", sql = "select * from file where Date ='1/2/2007' or Date = '2/2/2007' ", sep = ";")

png(file = "Plot1.png")
with(house, hist(Global_active_power, 
                 xlab = "Global_active_power (kilowatts)", 
                 col = "red",
                 main = "Global Active Power"))

dev.off()