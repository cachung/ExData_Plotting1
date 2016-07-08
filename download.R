#
# Dowdload the zip and Read the data file
#

if(!file.exists('data')) dir.create('data')
    
fileUrl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(fileUrl, destfile = './data/household_power_consumption.zip')
unzip('./data/household_power_consumption.zip', exdir = './data')


# Using data from dates 2007-02-01 and 2007-02-02. One alternative is to read
# data from just those dates rather than reading the entire dataset and
# subsetting to those dates. Convert the date using as.Date() functions

# Examine how household energy usage varies over a 2-day period in February, 2007. 
# Reconstruct the following plots below, all of which were constructed using the base plotting system.

# The following descriptions of the 9 variables in the dataset are taken from the UCI web site:
# Date: Date in format dd/mm/yyyy
# Time: time in format hh:mm:ss
# Global_active_power: household global minute-averaged active power (in kilowatt)
# Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
# Voltage: minute-averaged voltage (in volt)
# Global_intensity: household global minute-averaged current intensity (in ampere)
# Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). 
#    It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave 
#    (hot plates are not electric but gas powered).
# Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds 
#    to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
# Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to 
#    an electric water-heater and an air-conditioner
