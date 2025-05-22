DataSet <- read.csv("D:/Ruhaan/R/Files/Shark_Tank_US_dataset_Final-1.csv")
top_deals <- rep(0, 10)
episode_list <- rep(1, 10)
season_list <- rep(1, 10)
for (i in 1:nrow(DataSet)) {
  if (DataSet$Got.Deal[i] != 0) {
    deal_amount <- ifelse(is.na(DataSet$Total.Deal.Amount[i]), 0, DataSet$Total.Deal.Amount[i])
    season_index <- DataSet$Season.Number[i]
    episode_number <- DataSet$Episode.Number[i]
    if (deal_amount > min(top_deals)) {
      min_index <- which.min(top_deals)
      top_deals[min_index] <- deal_amount
      episode_list[min_index] <- episode_number
      season_list[min_index] <- season_index
    }
  }
}
sorted_indices <- order(-top_deals)
top_deals <- top_deals[sorted_indices]
episode_list <- episode_list[sorted_indices]
season_list <- season_list[sorted_indices]

for (i in 1:10) {
  cat(i, ". Season:", season_list[i], 
      "Episode:", episode_list[i], "\n")
}
