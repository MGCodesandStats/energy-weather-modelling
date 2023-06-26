# Directories 
mydata<- read.csv("daily kilowatt consumption.csv")
attach(mydata)
summary(mydata)

# ARIMA
fitarima<-auto.arima(mydata$Kilowatts[1:544], trace=TRUE, test="kpss", ic="bic")
fitarima

# Forecasted Values From ARIMA
forecastedvalues=forecast(fitarima,h=136)
forecastedvalues
plot(forecastedvalues)

# Test Values
test=mydata$Kilowatts[545:680]
test

library(Metrics)
rmse(forecastedvalues$mean, test)
mean(test)