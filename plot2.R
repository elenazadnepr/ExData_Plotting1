

#add Timestamp
data$Timestamp<-as.POSIXct(paste(data$Date, data$Time), format="%Y-%m-%d %H:%M:%S")
head(data$Timestamp)

png(file='plot2.png')
plot(data$Timestamp, data$Global_active_power, type='l', ylab='Global Active Power (kilowatts)', xlab='')
dev.off()
