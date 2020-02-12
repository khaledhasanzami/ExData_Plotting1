if (!file.exists("data")) {
    dir.create("data")
}
dataset_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(dataset_url, destfile="./data/exdata_data_household_power_consumption.zip", method = "wininet")
unzip("exdata_data_household_power_consumption.zip")
list.files("./data",  all.files=T)
power_consumption_data <- read.table("./data/household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
head(power_consumption_data)
tail(power_consumption_data)


power_consumption_data$Date <- as.Date(power_consumption_data$Date, format = "%d/%m/%y")
head(power_consumption_data$Date)
tail(power_consumption_data$Date)
pc <- subset(power_consumption_data, (Date >= as.Date("2007-2-1", format = "%y/%m/%d") & Date <= as.Date("2007-2-2", format = "%y/%m/%d")))
PP<-power_consumption_data[as.Date(power_consumption_data$Date,format="%d/%m/%y")>=as.Date("2007-2-1")&as.Date(power_consumption_data$Date,format="%d/%m/%y")<=as.Date("2007-2-2"),]
head(PP)
length(pc)


hist(pc$Global_active_power, main= "Global Active Power", xlab = "Global Active Power(kilowatts)", ylab = "Frequency", col = "red")

