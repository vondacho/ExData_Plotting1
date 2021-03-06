if (!exists("energy_data")) {
    source("load.R")
}

png(filename = "plot1.png", width = 480, height = 480)

with(energy_data, hist(Global_active_power,
     col = "red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power"))

dev.off()