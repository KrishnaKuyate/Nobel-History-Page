#N7

#####Sharing:



nobel_data%>%count(nobel_data$Category,nobel_data$`Prize Share`)->sh_df
colnames(sh_df)<-c("Category","Prize Share","Nobel Prize")

#Table:
sh_df

#Graph:
plot_ly(x=sh_df$Category, y=sh_df$`Prize Share`, z=sh_df$`Nobel Prize`, type="scatter3d", mode="markers",color =sh_df$Category)%>%
  layout(
    title = "Sharing:Category-Nobel Prize Winners",
    scene = list(
      xaxis = list(title = "Category"),
      yaxis = list(title = "Sharing"),
      zaxis = list(title = "Nobel Prize Winners")
    ))