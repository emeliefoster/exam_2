#testing github connection
#fixing longitude values 
a=read.csv("Alaska_Bald_Eagle_Nest_Sites_(USFWS).csv")
colnames(a)
a[,7]<-abs(a[,7])
a[,7]<-a[,7]*-1
View(a)
#adding a date column using a mm/dd/yyyy format 
library(dplyr)
b <- a%>%
  mutate(date = as.character(as.Date(modayyr, "%Y/%m/%d"),"%m/%d/%Y"))
View(b)
write.csv(x=b, file="Nest_Sites_corrected.csv", row.names = F)