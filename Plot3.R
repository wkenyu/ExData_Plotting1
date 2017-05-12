library(sqldf)
house <- read.csv2.sql("household_power_consumption.txt", sql = "select * from file where Date ='1/2/2007' or Date = '2/2/2007' ", sep = ";")

png(file = "Plot3.png")

with(house, plot(Sub_metering_1, col = "black", 
                 ylim = c(0, 40), ylab = "",
                 xlab = "", xaxt = "n", type = "l"))
par(new = T)
with(house, plot(Sub_metering_2, col = "blue", 
                 ylim = c(0, 40), ylab = "",
                 xlab = "", xaxt = "n", type = "l"))
par(new = T)
with(house, plot(Sub_metering_3, 
                 col = "red", 
                 ylim = c(0, 40), ylab = "Energy sub metering",
                 xlab = "", xaxt = "n", type = "l"))
axis(1, at=seq(0, 2880, 1440), labels=c("Thu", "Fri", "Sat"))
legend("topright",pch = "--", col = c("black", "blue", "red"), 
                                legend = c("Sub_metering_1", "Sub_metering_2",
                                           "Sub_metering_3"))
dev.off()
