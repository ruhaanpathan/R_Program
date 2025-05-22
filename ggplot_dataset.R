install.packages("ggplot2")
library(ggplot2)
x<-1:10
y=x*x
plot(x,y)

a=mtcars

qplot(mpg, wt, data=mtcars)

ggplot(mtcars,aes(x=mpg,y=wt))+geom_point(shape=9)+ggtitle("")
ggplot(mtcars,aes(x=mpg,y=wt,color=cyl))+geom_point(shape=9)+ggtitle("Scatterplot")
View(a)