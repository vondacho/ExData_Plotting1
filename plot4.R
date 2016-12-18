if (!exists("energy_data")) {
    source("load.R")
}

png(filename = "plot4.png", width = 480, height = 480)

par(mfrow= c(2,2))
with(energy_data, plot(Time, Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type="n"))
with(energy_data, lines(Time, Global_active_power))
with(energy_data, plot(Time, Voltage, xlab = "datetime", ylab = "Voltage", type="n"))
with(energy_data, lines(Time, Voltage))
with(energy_data, plot(Time, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type="n"))
with(energy_data, lines(Time, Sub_metering_1))
with(energy_data, lines(Time, Sub_metering_2, col = "red"))
with(energy_data, lines(Time, Sub_metering_3, col = "blue"))
legend("topright", lty = 1, col = c("black","red", "blue"), legend = names(energy_data)[7:9])
with(energy_data, plot(Time, Global_reactive_power, xlab = "datetime", ylab = "Global Reactive Power", type="n"))
with(energy_data, lines(Time, Global_reactive_power))

dev.off()