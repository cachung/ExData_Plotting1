# Load data

df<-file('data/household_power_consumption.txt','r')
mydata <- read.table(text = grep("^[1,2]/2/2007",readLines(df),value=TRUE), sep = ';', na.strings = '?')
names(mydata) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", 
                   "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
close(df)
closeAllConnections()

png(filename = 'plot3.png', width = 480, height = 480, units='px')

mydata$Date <- as.Date(mydata$Date, format = '%d/%m/%Y')
mydata$DateTime <- as.POSIXct(paste(mydata$Date, mydata$Time))

# Create Plot
plot(mydata$DateTime, mydata$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'n')

# Add Elements
lines(mydata$DateTime, mydata$Sub_metering_2, col = 'red')
lines(mydata$DateTime, mydata$Sub_metering_3, col = 'blue')
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)


# close device
dev.off()