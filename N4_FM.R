#N4
library(plotly)
####Male-Female
nobel_data$Sex
nobel_data%>%count(Sex)->Se_count
na.omit(Se_count)->Se_count
colnames(Se_count)<-c("Sex","Total Count")

#Table:
Se_count

#Graph:
ggplot(Se_count,aes(x=Sex,y=`Total Count`,fill=Sex))+ggtitle("$..Male-Female Nobel Prize Winner..$ ")+
  geom_bar(stat ="identity",position = "dodge")+theme(plot.title = element_text(size = 18,colour = "#009999"))+
  theme(axis.title = element_text(size=15,colour ="#00cccc" ),axis.text = element_text(angle = 45,hjust=1,size = 12,colour = "#00e6e6"))+
  geom_point()+theme(axis.line.y = element_line(size = 2,colour = "#66ffff"),axis.line.x= element_line(size = 2,colour = "#1affff"))

##M/F:Category-Count:

data.frame(nobel_data$Category,nobel_data$Sex)->df
df%>%count(df$nobel_data.Sex,df$nobel_data.Category)->df2
na.omit(df2)->df2
colnames(df2)<-c("Sex","Category","Total Prize Winner")
#Tabel:
df2

#Graph:
plot_ly(x=df2$Sex, y=df2$Category, z=df2$`Total Prize Winner`, type="scatter3d", mode="markers",color =df2$Category)%>%
  layout(
    title = "Male-Female:Category-Nobel Prize Winners",
    scene = list(
      xaxis = list(title = "Sex"),
      yaxis = list(title = "Category"),
      zaxis = list(title = "Nobel Prize Winners")
    ))






