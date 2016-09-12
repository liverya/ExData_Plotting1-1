FileName <- "household_power_consumption.txt"
data <- read.table(FileName, sep = ";", header = TRUE, stringsAsFactors = FALSE, dec = ".")
SubData <- data[data$Date %in% c("1/2/2007", "2/2/2007") ,]
DateTime <- strptime(paste(SubData$Date, SubData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
GAP <- as.numeric((SubData$Global_active_power))
subM1 <- as.numeric(SubData$Sub_metering_1)
subM2 <- as.numeric(SubData$Sub_metering_2)
subM3 <- as.numeric(SubData$Sub_metering_3)
png("plot3.png", width = 480, height = 480)
plot(DateTime, subM1, type = "l", ylab = "Energy Submetering", xlab = "")
lines(DateTime, subM2, type = "l", col = "red")
lines(DateTime, subM3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col = c("black","red", "blue"))
dev.off()