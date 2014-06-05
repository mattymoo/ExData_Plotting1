powertest <-read.table("household_power_consumption.txt",header=TRUE,sep = ";")
powertest$Global_active_power <-as.numeric(powertest$Global_active_power)
powersub <- powertest[(powertest$Date >= "2007-02-01") & (powertest$Date <= "2007-02-02"), ]
hist(powersub$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power", xaxt="n")
axis(1, at=c(0,1000,2000,3000), labels=c("0","2","4","6"))
dev.copy(png, file="Plot1.png")
dev.off()