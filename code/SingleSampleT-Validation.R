data <-read.csv("data/one_sample.csv",header=TRUE)
x<-data$time
summary(x)
mean(x,na.rm = T)
shapiro.test(x)
t.test(x, mu=5.2, alter ="two-sided", conf.level = 0.095)
