# Energy and Weather Modelling: Time Series Analysis

This project the use of time series models in forecasting electricity, temperature and rainfall patterns.

Data is sourced from [Met Éireann](https://www.met.ie/climate/available-data/historical-data), the [UK Met Office](https://www.metoffice.gov.uk/pub/data/weather/uk/climate/stationdata/braemardata.txt), and [data.gov.ie](https://data.gov.ie/dataset/energy-consumption-gas-and-electricity-civic-offices-2009-2012/resource/6091c604-8c94-4b44-ac52-c1694e83d746).

Techniques used include:

- ARIMA and Prophet for temperature forecasting
- LSTM for rainfall forecasting
- Monte Carlo simulations for extreme weather modeling
- PyFlux for probability-based analysis of temperature forecasts

## Articles

### [ARIMA vs LSTM: Forecasting Electricity Consumption](https://www.michael-grogan.com/articles/arima-lstm-electricity.html)

In this example, the ARIMA and LSTM models are used to predict electricity consumption patterns for the Dublin City Council Civic Offices, Ireland. Specifically, the data is provided in terms of kilowatt consumption every 15 minutes. Data is manipulated into a daily time series format using pandas and numpy, and forecasting performance across ARIMA and LSTM models are compared.

[![auto_arima_571](auto_arima_571.png)](https://www.michael-grogan.com/articles/arima-lstm-electricity.html)

### [SARIMA vs Prophet: Forecasting Seasonal Weather Data](https://www.michael-grogan.com/articles/sarima-prophet-weather.html)

ARIMA and Prophet are major time series tools used to forecast future values. When conducting time series analysis, it is frequently the case that a time series will have a seasonal fluctuation — or a shift in the time series that periodically occurs during certain times. Weather data is a classic example of this — with temperatures fluctuating significantly during the four seasons. 

[![acf_571](acf_571.png)](https://www.michael-grogan.com/articles/sarima-prophet-weather.html)

### [XGBoost For Time Series Forecasting: Don’t Use It Blindly](https://www.michael-grogan.com/articles/xgboost-time-series.html)

When it comes to using a machine learning model such as XGBoost to forecast a time series — all common sense seems to go out the window. Rather, we simply load the data into the model in a black-box like fashion and expect it to magically give us accurate output. A little known secret of time series analysis — not all time series can be forecast, no matter how good the model. Attempting to do so can often lead to spurious or misleading forecasts.

[![xgbregressor](xgbregressor.png)](https://www.michael-grogan.com/articles/xgboost-time-series.html)
