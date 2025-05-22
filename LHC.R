DataSet<-read.csv("D:/Ruhaan/R/Files/Shark_Tank_US_dataset_Final-1.csv")
View(DataSet)

high_list=rep(1:10)
for (i in 1:nrow(DataSet)) {  
  if (DataSet$Season.Number[i] <= 10 && DataSet$Got.Deal[i] != 0) {
    season_index <- DataSet$Season.Number[i]
    high_list[season_index] <- high_list[season_index] + (ifelse(is.na(DataSet$Total.Deal.Amount[i]), 0, DataSet$Total.Deal.Amount[i]))
  }
}
season <- which.max(high_list)
print(season)
print(max(high_list))