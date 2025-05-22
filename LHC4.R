DataSet <- read.csv("D:/Ruhaan/R/Files/Shark_Tank_US_dataset_Final-1.csv")
Top_Deals=rep(1:15)
Names_Deals=as.character(1:15)
for (i in 1:nrow(DataSet)){
  if(DataSet$Got.Deal[i]!=0){
    Deal_Amt<- ifelse(is.na(DataSet$Investment.Amount.Per.Shark[i]), 0, DataSet$Investment.Amount.Per.Shark[i])
    Amt_Sharks<-ifelse(is.na(DataSet$Number.of.sharks.in.deal[i]),0,DataSet$Number.of.sharks.in.deal[i])
    Total_Invest<-Deal_Amt*Amt_Sharks
    Deal_Name<-ifelse(is.na(DataSet$Startup.Name[i]),"",DataSet$Startup.Name[i])
    
    if(Deal_Amt>min(Top_Deals)){
      min_index <- which.min(Top_Deals)
      Top_Deals[min_index] <- Deal_Amt
      Names_Deals[min_index] <- Deal_Name
    }
  }
}
sorted_indices <- order(-Top_Deals)
Top_Deals <- Top_Deals[sorted_indices]
Names_Deals <- Names_Deals[sorted_indices]

for (i in 1:15) {
  cat(i, ". Season:", Names_Deals[i], 
      "Episode:", Top_Deals[i], "\n")
}
