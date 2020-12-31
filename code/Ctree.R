install.packages("party")
library(party)
str(airquality)
formula <- Temp ~ Solar.R + Wind+ Ozone
air_ctree <- ctree(formula,data=airquality)
plot(air_ctree)