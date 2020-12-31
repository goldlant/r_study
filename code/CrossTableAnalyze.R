data <- read.csv("data/cleanDescriptive.scv",header = TRUE)
data

x <- data$level2
y <- data$pass2
result = data.frame(Level = x,  Pass = y)
result

install.packages("gmodels")
library(gmodels)
CrossTable(x, y, chisq = TRUE)
