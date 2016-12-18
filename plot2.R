if (!exists("energy_data")) {
    source("load.R")
}

png(filename = "plot2.png", width = 480, height = 480)

with(energy_data, plot(Time, Global_active_power,
                xlab = "",
                ylab = "Global Active Power (kilowatts)",
                type="n"))
with(energy_data, lines(Time, Global_active_power))

dev.off()