DataSet <- read.csv("D:/Ruhaan/R/Files/Shark_Tank_US_dataset_Final-1.csv")
Total_Invest_aksed<-0
Total_Got<-0
Total_People<-0
for (i in 1:nrow(DataSet)){
  if(DataSet$Got.Deal[i]!=0){
    
    
    Total_Invest<- ifelse(is.na(DataSet$Original.Ask.Amount[i]), 0, DataSet$Original.Ask.Amount[i])
    Total_Invest_aksed<-Total_Invest_aksed+Total_Invest
    
    
    
    Total_Amt_Got<- ifelse(is.na(DataSet$Investment.Amount.Per.Shark[i]), 0, DataSet$Investment.Amount.Per.Shark[i])
    Amt_Sharks<-ifelse(is.na(DataSet$Number.of.sharks.in.deal[i]),0,DataSet$Number.of.sharks.in.deal[i])
    Total_Got<-Total_Got+(Total_Amt_Got*Amt_Sharks)
    
    
    if(Deal_Amt==0 || Amt_Sharks==0){
      next}else{
        Total_People<-Total_People+1
      }
  }
}
Total_Invest_aksed=Total_Invest_aksed/Total_People
Total_Got<-Total_Got/Total_People

paste("Total Aksed : ",Total_Invest_aksed,"  Total Got : ",Total_Got) 
