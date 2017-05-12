library(sqldf)
house <- read.csv2.sql("household_power_consumption.txt", sql = "select * from file where Date ='1/2/2007' or Date = '2/2/2007' ", sep = ";")

png(file = "Plot2.png")

with(house, plot(Global_active_power,
                 type = "l",
                 ylab = "Global Active Power(kilowatts)",
                 xlab = "",
                 xaxt = "n"))
axis(1, at=seq(0, 2880, 1440), labels=c("Thu", "Fri", "Sat"))
dev.off()