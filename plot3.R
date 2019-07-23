
png(file='plot3.png')
plot(data$Timestamp, data$Sub_metering_1, type='n', ylab='Energy sub metering', xlab='')
lines(data$Timestamp, data$Sub_metering_1)
lines(data$Timestamp, data$Sub_metering_2, col='red')
lines(data$Timestamp, data$Sub_metering_3, col='blue')
legend('topright', lty=c(1,1,1),col=c('black', 'red', 'blue'), legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
dev.off()