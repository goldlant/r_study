data("AirPassengers")

par(mfrow=c(1,2)) #한 화면에 여러 그래프 그릴때
plot(AirPassengers)
diff<-diff(AirPassengers)
plot(diff)

par(mfrow=c(1,2))
plot(AirPassengers)
log<-diff(log(AirPassengers))
plot(log)

data("WWWusage")
str(WWWusage)
WWWusage

input <- c(3180,3000,3200,3100,3300,3200,3550,3200,3400,3300,3700)
tsdata <- ts(input,start=c(2018,2),frequency = 12 )
tsdata
plot(tsdata, type="1",col="red")

install.packages("forecast")
library(forecast)
arima <- auto.arima(tsdata)
arima

model <-arima(tsdata, order=c(1,1,0))
model

fore<-forecast(model)
par(mfrow=c(1,2))
plot(fore)
model2<-forecast(model,h=6)
plot(model2)