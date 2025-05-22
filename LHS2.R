DataSet<-read.csv("D:/Ruhaan/R/Files/Shark_Tank_US_dataset_Final-1.csv")
high_list <- rep(0, 10)
episode_list <- rep(0, 10)
for (i in 1:nrow(DataSet)) {
  if (DataSet$Season.Number[i] <= 10 && DataSet$Got.Deal[i] != 0) {
    season_index <- DataSet$Season.Number[i]
    episode_number <- DataSet$Episode.Number[i]
    deal_amount <- ifelse(is.na(DataSet$Total.Deal.Amount[i]), 0, DataSet$Total.Deal.Amount[i])
    if (deal_amount > high_list[season_index]) {
      high_list[season_index] <- deal_amount
      episode_list[season_index] <- episode_number
    }
  }
}
for (season in 1:10) {
  cat("Season", season, "- Episode", episode_list[season],"\n")
}