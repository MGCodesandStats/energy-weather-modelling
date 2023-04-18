# Directories 
mydata<- read.csv("mly532.csv")
attach(mydata)
summary(mydata)

meant <- ts(mydata$meant[1:732], start = c(1941,11), frequency = 12)
plot(meant,type="l",ylab="Temperature")
title("Mean Temperature - Dublin Airport")

stl_weather = stl(meant, "periodic")
seasonal_stl_weather   <- stl_weather$time.series[,1]
trend_stl_weather     <- stl_weather$time.series[,2]
random_stl_weather  <- stl_weather$time.series[,3]

plot(as.ts(seasonal_stl_weather))
title("Seasonal")
plot(trend_stl_weather)
title("Trend")
plot(random_stl_weather)
title("Random")

# Load libraries
library(MASS)
library(tseries)
library(forecast)

# ACF, PACF and Dickey-Fuller Test
acf(meant, lag.max=20)
pacf(meant, lag.max=20)
adf.test(meant)

components <- decompose(meant)
components
plot(components)

# ARIMA
fitweatherarima<-auto.arima(meant, trace=TRUE, test="kpss", ic="bic")
fitweatherarima
confint(fitweatherarima)

# Forecasted Values From ARIMA
forecastedvalues=forecast(fitweatherarima,h=183)
forecastedvalues
plot(forecastedvalues)

# Test Values
test=mydata$meant[733:915]
test

# Ljung-Box
Box.test(fitweatherarima$resid, lag=4, type="Ljung-Box")
Box.test(fitweatherarima$resid, lag=8, type="Ljung-Box")
Box.test(fitweatherarima$resid, lag=12, type="Ljung-Box")

library(Metrics)
rmse(forecastedvalues$mean, test)
mean(test)