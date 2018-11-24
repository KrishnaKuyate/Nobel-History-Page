#N1

###Load data file:

library(readr)
archive <- read_csv("archive.csv")
View(archive)

###Convert into data frame:

as.data.frame(archive)->nobel_data
nobel_data


