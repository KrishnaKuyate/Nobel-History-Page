#N3

####Statistics:
library(dplyr)
library(ggplot2)

##Total No.of Nobel Prize Winner
na.omit(nobel_data$`Laureate ID`)->Nobel_winner_Tcount
length(Nobel_winner_Tcount)

##Categorywise
nobel_data$Category
nobel_data%>%count(Category)->Categorywise_Tcoun
as.data.frame(Categorywise_Tcoun)->Categorywise_Tcoun
colnames(Categorywise_Tcoun)<-c("Catrgory","Total Prize Winner")
#Table:
Categorywise_Tcoun
#Graph:
ggplot(Categorywise_Tcoun,aes(x=Catrgory,y=`Total Prize Winner`,fill=Catrgory))+geom_bar(stat ="identity",position = "dodge")+
  ggtitle("$..Category and Total Nobel Prize Winner..$")+theme(plot.title = element_text(size = 18,colour = "#cc66ff"))+
  theme(axis.title = element_text(size=15,colour ="#9900e6" ),axis.text = element_text(angle = 45,hjust=1,size = 12,colour = "#7700b3"))+
  geom_point()+theme(axis.line.y = element_line(size = 2,colour = "#dd99ff"),axis.line.x= element_line(size = 2,colour = "#c44dff"))

