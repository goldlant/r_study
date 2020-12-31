idx <- sample(1:nrow(iris), nrow(iris) *0.7)
train <- iris[idx, ]
test <-iris[idx, ]

formula <- Species ~ Sepal.Length + Sepal.Width + 
  Petal.Length + Petal.Width

iris_ctree <-ctree(formula,data=train)

plot(iris_ctree)

pred <-predict(iris_ctree,test)
table(pred,test$Species)

(15+6+12)/nrow(test)
