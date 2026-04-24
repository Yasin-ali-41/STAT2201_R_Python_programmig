x<-seq(from=-1,to=1,by=0.2)
x
y<-x^3
y
library(ggplot2)
qplot(x,y) # Scatter plot

# Histogram gives visualization for one variable, it shows how many data points appear each value of x

x1<-c(1,2,2,2,3,3)
qplot(x1, binwidth=1,las=1)
hist(x1)



# Practice Exercise p-27
x3<-c(0,1,1,2,2,2,3,3,4)
qplot(x3,binwidth=1)
replicate(10,"Ratul")
replicate(3,1+1)
dice<-sample(die,size = 2,replace =T)

roll<-function(){
  dic<-1:6
  dice<-sample(die,size=2,replace = T,prob = c(1/8,1/8,1/8,1/8,1/8,3/8))
  sum(dice)
}
rolls<-replicate(10000,roll())
qplot(rolls,binwidth=1)
