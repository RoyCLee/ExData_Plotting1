##  plot1.R

##  Roy Lee
##  08-MAR-2015
##  Exploratory Data Anaysis
##  Course Project 1

hpc <- read.table("household_power_consumption.txt", header = TRUE, sep = ';', as.is = TRUE, na.strings = '?')
DateTime <- as.POSIXct(strptime(paste(hpc[, "Date"], hpc[, "Time"]), "%d/%m/%Y%H:%M:%S"))
hpc2 <- cbind(hpc, DateTime)
hpc3 <- hpc2[hpc2$DateTime >= "2007-02-01" & hpc2$DateTime < "2007-02-03", ]

png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(hpc3$Global_active_power, col = 'red', main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
axis(side = 2, at=c(200,400,600,800,1000,1200))
dev.off()

##  end
