library(timeSeries)
household_power_consumption <- read.csv("~/Downloads/household_power_consumption.txt", sep=";", na.strings="?")
DT <- household_power_consumption
DT <- na.omit(DT)
DT2 <- DT[DT$Date == "1/2/2007" | DT$Date == "2/2/2007",]
DT2$MTime <- paste(DT2$Date, DT2$Time, sep= " ")
DT2$MTime <- as.POSIXct(strptime(DT2$MTime, "%d/%m/%Y %H:%M:%S"))
par(mar = c(2,4,2,2))
plot(ts(DT2$Global_active_power), xaxt="n", ylab="Global Active Power (kilowatts)", xlab = "")
axis(side=1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))