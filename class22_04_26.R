data<-c(10,20,30,40,50)
mean(data);median(data);min(data) ;mode(data);max(data);var(data);summary(data)
df=data.frame(SH=c(1,2,0,4),EH=c(15,20,20,10))
mean(df$SH);median(df$SH);mode(df$SH);summary(df$SH)



plot(df$EH,df$SH,xlab = "EH",ylab = "SH",las=1,)
hist(df$SH,main = "Histogram Of SH",col=6,freq = F,breaks = c(0,1,2,4),xlab = "SH")
boxplot(df$SH,df$EH,main="Boxplot of SH and EH",col = 7,las=1)
hist(df$SH,main="Histogram of SH",xlab = "SH",col = "green")
hist(df$EH,main="Histogram of EH",xlab="EH",col = "red",breaks = c(10,15,20))




x<-c("A","B","C","D","E")
table(x)
prop.table(table(x))


library(DataExplorer)
cor(df$SH,df$EH)
