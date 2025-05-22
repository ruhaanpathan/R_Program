DataSet <- read.csv("D:/Ruhaan/R/Files/Shark_Tank_US_dataset_Final-1.csv")
Invest_Got<-0
for (i in 1:nrow(DataSet)){
  if(DataSet$Got.Deal[i]!=0){
    Invest_Got <- Invest_Got+1
  }
}
paste("startups received deals: ",Invest_Got)
paste("startups not received deals: ",nrow(DataSet)-Invest_Got)
paste("percentage of pitches got funded: ",(Invest_Got/nrow(DataSet))*100,"%")