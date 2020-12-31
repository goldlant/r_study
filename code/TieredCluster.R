#계층적 군집분석 
install.packages("cluster")
library(cluster)

interview <- read.csv("data/interview.csv",header = TRUE)
names(interview)

interview_df <- interview[(2:7)]
idist <- dist(interview_df)
head(idist)

hc <- hclust(idist)
hc

plot(hc, hang=-1)

