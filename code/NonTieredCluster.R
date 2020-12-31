install.packages("ggplot2")
library(ggplot2)

data(diamonds)
t<-sample(1:nrow(diamonds),1000)
test<-diamonds[t,]
dim(test)
test
mydia <- test[c("price","carat","depth","table")]
head(mydia)

result <- hclust(dist(mydia),method="ave")
result
plot(result, hang=-1)

result2 <-keman(mydia,3)
names(result2)
result2$cluster
mydia$cluster<-result$cluster

plot(mydia$carat, mydia$price, col=mydia$cluster)
points(result$centers[,c("carat","price")],
       col=c(3,2,1),pch=8,cex=5)




