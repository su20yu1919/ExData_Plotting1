
household_power_consumption <- read.csv("~/Downloads/household_power_consumption.txt", sep=";", na.strings="?")
household_power_consumption$Date <- as.Date(household_power_consumption$Date, "%d/%m/%Y")
DT <- data.table(household_power_consumption)
DT <- na.omit(DT)
DT2 <- DT[DT[,Date >= "2007-02-01"]]
DT2 <- DT2[DT2[,Date <= "2007-02-02"]]
hist(DT2$Global_active_power, breaks=15,col= "red", 
     main= "Global Active Power", xlab="Global Active Power (kilowatts)")
png(filename= "~/Desktop/Plot1.png")
hist(DT2$Global_active_power, breaks=15,col= "red", 
          main= "Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()