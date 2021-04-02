<<<<<<< HEAD
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

min(b$date)
max(b$date)
c <- a%>%
  mutate(date = as.character(as.Date(modayyr, "%Y/%m/%d"),"%Y"))
View (c)
min(c$date)
max(c$date)
write.csv(x=c, file="Nest_Sites_corrected3.csv", row.names=F)
max(a$youngage, na.rm = TRUE)
#calculating the year with the highest # of eaglets
library(dplyr)
d=c %>%
  group_by(date) %>%
  summarise(max_count=
            sum(youngage, na.rm=TRUE)) %>%
  filter(max_count==max(max_count))
d

=======
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
c <- a%>%
  mutate(date = as.character(as.Date(modayyr, "%Y/%m/%d"),"%Y"))

c %>%
  group_by(date) %>%
  summarise(max_count=
              sum(youngage, na.rm=TRUE)) %>%
  filter(max_count==max(max_count))
