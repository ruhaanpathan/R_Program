library(ggplot2)
library(readxl)
a=read_excel("D:/Ruhaan/R/Files/Evaluation Sheet for R Practical exam LHC.xlsx")

ggplot(a,annotate(x="Oral VIVA",y="Long Hour"))+geom_point()
View(a)
qplot("Oral VIVA","Long Hour",data=a)


en=a$Enrollment
viva=a$`Viva (25)`
ggplot(a,aes(x=en,y=viva))+geom_point()