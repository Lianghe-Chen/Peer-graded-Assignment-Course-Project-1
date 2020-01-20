
## Plot 1

data <- read.table("C:/Users/chenl/Desktop/Documents/PERSONAL INFORMATION/LIANGHE INFORMATION/GITHUB/Peer-graded-Assignment-Course-Project-1/exdata_data_household_power_consumption/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")

hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.copy(png, file="Plot1.png", height=480, width=480)
dev.off()
