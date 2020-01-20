
## Plot 2

data_full <- read.csv("C:/Users/chenl/Desktop/Documents/PERSONAL INFORMATION/LIANGHE INFORMATION/GITHUB/Peer-graded-Assignment-Course-Project-1/exdata_data_household_power_consumption/household_power_consumption.txt",
                      header = TRUE, sep = ";", na.strings = "?", nrows = 2075259, check.names = FALSE,
                      stringsAsFactors = FALSE, comment.char = "", quote = '\"')
data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")

data <- subset(data_full, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(data_full)

datetime <- paste(as.Date(data$Date), data$Time)
data$datetime <- as.POSIXct(datetime)

plot(data$Global_active_power~data$datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="Plot2.png", height=480, width=480)
dev.off()
