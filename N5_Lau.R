#N5
library(plotly)
#######Laureate Type

nobel_data$`Laureate Type`
nobel_data%>%count(nobel_data$`Laureate Type`)->Lau_df
as.data.frame(Lau_df)->Lau_df1
colnames(Lau_df1)<-c("Laureate Type","Total Prize Winner")

#Table:
Lau_df1

#Graph:
ggplot(Lau_df1,aes(x=`Laureate Type`,y=`Total Prize Winner`,fill=`Laureate Type`))+ggtitle("$..Laureate Type and Nobel Prize Winner..$")+
  geom_bar(stat ="identity",position = "dodge")+theme(plot.title = element_text(size = 18,colour = "#009999"))+
  theme(axis.title = element_text(size=15,colour ="#00cccc" ),axis.text = element_text(angle = 45,hjust=1,size = 12,colour = "#00e6e6"))+
  geom_point()+theme(axis.line.y = element_line(size = 2,colour = "#66ffff"),axis.line.x= element_line(size = 2,colour = "#1affff"))
nobel_data$Sex
###Laureate Type-Category:Count
data.frame(nobel_data$`Laureate Type`,nobel_data$Category)->Lau_cat
Lau_cat%>%count(Lau_cat$nobel_data..Laureate.Type.,Lau_cat$nobel_data.Category)->Lat1
as.data.frame(Lat1)->Lat2
colnames(Lat2)<-c("Laureate Type","Category","Total Prize Winners")
#Table:
Lat2

#Graph:
plot_ly(x=Lat2$`Laureate Type`, y=Lat2$Category, z=Lat2$`Total Prize Winners`, type="bar", mode="markers",color =Lat2$Category)
