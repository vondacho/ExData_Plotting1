# Loads the energy data for the explorative analysis

energy_data_origin<-read.csv("household_power_consumption.txt",
                      sep=";", na.strings = "?",
                      colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

energy_data_origin$Date <- as.Date(energy_data_origin$Date, "%d/%m/%Y")

energy_data<-subset(energy_data_origin, Date >= "2007-02-01" & Date <= "2007-02-02")

rm(energy_data_origin)

energy_data$Time<-strptime(paste(energy_data$Date, energy_data$Time), "%Y-%m-%d %H:%M:%S")