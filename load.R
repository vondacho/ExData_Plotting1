# Downloads the energy dataset file

energy_data_origin.url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
energy_data_origin.zip <- "household_power_consumption.zip"
if (!file.exists(energy_data_origin.zip))
    download.file(energy_data_origin.url, destfile = energy_data_origin.zip, method = "curl")

unzip(energy_data_origin.zip)

# Loads the energy dataset for the exploratory analysis

energy_data_origin<-read.csv("household_power_consumption.txt",
                      sep=";", na.strings = "?",
                      colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

energy_data_origin$Date <- as.Date(energy_data_origin$Date, "%d/%m/%Y")

energy_data<-subset(energy_data_origin, Date >= "2007-02-01" & Date <= "2007-02-02")

rm(energy_data_origin)

energy_data$Time<-strptime(paste(energy_data$Date, energy_data$Time), "%Y-%m-%d %H:%M:%S")
