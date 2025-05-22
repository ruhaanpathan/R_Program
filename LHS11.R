DataSet <- read.csv("D:/Ruhaan/R/Files/Shark_Tank_US_dataset_Final-1.csv")

DataSet$Total.Deal.Amount <- ifelse(is.na(DataSet$Total.Deal.Amount), 0, DataSet$Total.Deal.Amount)

industry_deals <- aggregate(Total.Deal.Amount ~ Industry, data = DataSet, sum)

industry_deals_sorted <- industry_deals[order(-industry_deals$Total.Deal.Amount), ]

top_3_industries <- head(industry_deals_sorted, 3)

print(top_3_industries)