DataSet <- read.csv("D:/Ruhaan/R/Files/Shark_Tank_US_dataset_Final-1.csv")
Total_Invest<-0
Total_Got<-0
for (i in 1:nrow(DataSet)){
  if(DataSet$Got.Deal[i]!=0){
    Deal_Amt<- ifelse(is.na(DataSet$Investment.Amount.Per.Shark[i]), 0, DataSet$Investment.Amount.Per.Shark[i])
    Amt_Sharks<-ifelse(is.na(DataSet$Number.of.sharks.in.deal[i]),0,DataSet$Number.of.sharks.in.deal[i])
    Total_Invest<-Total_Invest+(Deal_Amt*Amt_Sharks)
    Total_Got<-Total_Got+1
  }
}
Total_Invest=Total_Invest/Total_Got
paste("the average investment amount given to startups that received deals",Total_Invest)





hello<-DataSet$Total.Deal.Amount
summary(hello)