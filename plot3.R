if (!exists("energy_data")) {
    source("load.R")
}

png(filename = "plot3.png", width = 480, height = 480)

with(energy_data, plot(Time, Sub_metering_1, xlab = "", ylab = "Energy sub metering", type="n"))
with(energy_data, lines(Time, Sub_metering_1))
with(energy_data, lines(Time, Sub_metering_2, col = "red"))
with(energy_data, lines(Time, Sub_metering_3, col = "blue"))
legend("topright", lty = 1, col = c("black","red", "blue"), legend = names(energy_data)[7:9])

dev.off()