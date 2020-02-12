#lets create the png file with the given dimensions
png(file = "plot1.png", width=480, height=480)
#lets plot the desired histogram
hist(power_consumption_data$Global_active_power, main= "Global Active Power", xlab = "Global Active Power(kilowatts)", ylab = "Frequency", col = "red")
#just close it off
dev.off()
