#Global Active Power
png(file='plot1.png')
hist(data$Global_active_power, col='red', xlab='Global Active Power (kilowatts)', ylab='Frequency', main='Global Active Power')
dev.off()

