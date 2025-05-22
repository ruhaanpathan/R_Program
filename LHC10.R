#Find the number of deals having five sharks involved.
DataSet<- read.csv("D:/Ruhaan/R/Files/Shark_Tank_US_dataset_Final-1.csv")
Total_Got_Deal<-0
Num_of_Sharks<-0
for(i in 1:nrow(DataSet)){
  if(DataSet$Got.Deal[i]!=0 && ifelse(is.na(DataSet$Number.of.sharks.in.deal[i]),0,DataSet$Number.of.sharks.in.deal[i])==5){
    Total_Got_Deal<-Total_Got_Deal+1
  }
}
print(Total_Got_Deal)