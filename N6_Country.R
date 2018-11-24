#N6
library(rgeos)
library(maptools)
library(ggplot2)
library(maps)
####Country:Nobel Prize Winners####

nobel_data%>%count(nobel_data$`Organization Country`)->Country_count_df
colnames(Country_count_df)<-c("Country Name","Nobel Prize")
nobel_data%>%count(nobel_data$`Birth Country`)->Birth_ccount
colnames(Birth_ccount)<-c("Country Name","Nobel Prize")
rbind(Country_count_df,Birth_ccount)->Country_count_df1
Country_count_df1%>%count(Country_count_df1$`Country Name`)->Country_count_df2
colnames(Country_count_df2)<-c("Country Name","Nobel Prize")
##Table:
Country_count_df2

#map-plot
Country_count_df2->plot.data

WorldData <- map_data('world')
head(WorldData, 100)
Total <- WorldData[WorldData$region %in% plot.data$`Country Name`, ]
Total$value <- plot.data$`Nobel Prize`[match(Total$region, plot.data$`Country Name`)]

ggplot(Total, aes(x=long, y=lat, group = group, fill = value)) + geom_polygon() 
  
##Top 10 Country:
Country_count_df2%>%arrange(desc(Country_count_df2$`Nobel Prize`))->t10
t10[1:10,] 
