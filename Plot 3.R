library(timeSeries)
household_power_consumption <- read.csv("~/Downloads/household_power_consumption.txt", sep=";", na.strings="?")
DT <- household_power_consumption
DT <- na.omit(DT)
DT2 <- DT[DT$Date == "1/2/2007" | DT$Date == "2/2/2007",]
par(mar = c(2, 4,2,2))
plot(ts(DT2$Sub_metering_1), xaxt="n", ylab="Energy sub metering", xlab = "")
axis(side=1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))
lines(ts(DT2$Sub_metering_2), col = "red")
lines(ts(DT2$Sub_metering_3), col = "blue")
legend("topright", lty = 1, col = c("black", "blue", "red"), legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3"))