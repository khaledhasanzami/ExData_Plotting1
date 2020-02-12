png(file = "plot3.png", width=480, height=480)
with(power_consumption_data, {plot(DateTime, Sub_metering_1, type = "l", ylab="Global Active Power (kilowatts)", xlab="")
    lines(DateTime, Sub_metering_2, col = "red") 
    lines(DateTime, Sub_metering_3, col = "blue")})

dev.off()