install.packages("neuralnet") # 출력에 대한 값 수치형 
library(neuralnet)

data("iris")
idx = sample(1:nrow(iris),0.7*nrow(iris))  # sample(150, 5) : 1~150 에서 5개의 데이터 랜덤 추출

training_iris = iris[idx,]  # 70%의 랜덤  (training)데이터
testing_iris = iris[-idx,]  # 나머지 30%의 랜덤 (testing)데이터
dim(training_iris) #dim : datafram 길이 관측, 행과 열의 개수 모두 출력 
dim(testing_iris)

training_iris$Species2[training_iris$Species] = 'setosa' <-1
training_iris$Species2[training_iris$Species] = 'versicolor' <-2
training_iris$Species2[training_iris$Species] = 'virginica' <-3
training_iris&Species <-NULL
head(training_iris)

testing_iris$Species2[testing_iris$Species] = 'setosa' <-1
testing_iris$Species2[testing_iris$Species] = 'versicolor' <-2
testing_iris$Species2[testing_iris$Species] = 'virginica' <-3
testing_iris&Species <-NULL
head(testing_iris)

normal <-function(x){
  return((x-min(x)) / (max(x)-min(x)))
}

training_nor <-as.data.frame(lapply(training_iris, normal))
summary(training_nor)

testing_nor <-as.data.frame(lapply(testing_iris, normal))
summary(testing_nor)

model_net = neuralnet(Species2 ~ Sepal.Length+Sepal.Width+Petal.Length_Petal.Width,
                      data=training_nor,hidden = 1)

model_net

plot(model_net)

model_result <-compute(model_net, testing_nor[c(1:4)])
model_result$net.result

cor(model_result$net.result,testing_nor$Species2)


