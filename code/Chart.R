chart_data <-c(305,450,320,460,330,480,380,520)
names(chart_data) <- c("2020 1분기","2021 1분기",
                       "2020 2분기","2021 2분기",
                       "2020 3분기","2021 3분기",
                       "2020 4분기","2021 4분기")

str(chart_data)
chart_data

barplot(chart_data,ylim = c(0,600),col=rainbow(8),
        main="2020년도 vs 2021년도 분기 비교")

barplot(chart_data,xlim = c(0,600),horiz =T,
        col=rainbow(8),
        main="2020년도 vs 2021년도 분기 비교")


data("VADeaths")
VADeaths

barplot(VADeaths,beside=F, col = rainbow(5),
        main="미국 버지나이주 하위계층 사망비율 ")

legend(3,8,200,c("50~54","55~59","60~64",
                 "65~69","70~74",),
       fill=rainbow(5))


dotchart(chart_data,color=c("green","red"),
         lcolor="black",pch=1:2,
         labels=names(chart_data),xlab="매출액",
         main="분기별 판매현황 점 차트")

boxplot(VADeaths,range=0)

summary(iris)

hist(iris$Sepal.Length,xlab=iris$Sepal.Length,
     col="magenta",main="꽃받침 길이",xlim=c(4.3,7.9))

price <- runif(10, min=1, max=100)
plot(price,col="red")

x <- c(1,2,3,4,2,4)
y <- rep(2,6)
x;y
table(x,y)
plot(x,y)
xy.df=as.data.frame(table(x,y))
xy.df
plot(x,y,col="red",cex=2*xy.df$Freq)