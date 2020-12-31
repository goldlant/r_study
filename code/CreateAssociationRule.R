install.packages("arules")
library(arules)

tran <- read.transactions("data/tran.txt",format="basket",sep=",")
summary(tran)

rule <- apriori(tran,parameter=list(supp=0.1, conf=0.1))
inspect(rule)

data("Adult")
str(Adult)

ar <- apriori(Adult,parameter = list(supp=0.3, conf=0.95))

install.packages("arulesViz")
library(arulesViz)

plot(ar, method="graph",control=list(type="items"))