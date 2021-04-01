#testing github connection
#fixing longitude values 
a=read.csv("Alaska_Bald_Eagle_Nest_Sites_(USFWS).csv")
colnames(a)
a[,7]<-abs(a[,7])
a[,7]<-a[,7]*-1
View(a)

