# Load data
df<-file('data/household_power_consumption.txt','r')
mydata <- read.table(text = grep("^[1,2]/2/2007",readLines(df),value=TRUE), sep = ';', na.strings = '?')
names(mydata) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", 
                   "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
close(df)
closeAllConnections()

mydata$Date <- as.Date(mydata$Date, format = '%d/%m/%Y')
mydata$DateTime <- as.POSIXct(paste(mydata$Date, mydata$Time))


png(filename = 'plot1.png', width = 480, height = 480, units='px')

#calling the basic plot function
hist(mydata$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

# annotating graph
title(main="Global Active Power")

dev.off()