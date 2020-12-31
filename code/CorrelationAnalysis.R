result <- read.csv("data/product.csv",header = TRUE)
summary(result)
sd(result$제품_친밀도)
cor(result$제품_친밀도,result$제품_적절성)
