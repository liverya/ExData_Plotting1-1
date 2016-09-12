FileName <- "household_power_consumption.txt"
data <- read.table(FileName, sep = ";", header = TRUE, stringsAsFactors = FALSE, dec = ".")
SubData <- data[data$Date %in% c("1/2/2007", "2/2/2007") ,]
DateTime <- strptime(paste(SubData$Date, SubData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
plot(DateTime, GAP, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()