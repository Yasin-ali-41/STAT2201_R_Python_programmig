setwd("C:/Rr")
getwd()
list.files()


data <- read_excel("Real_Estate_Data_SPSS.xlsx")
data <- as.data.frame(data);data


dataspss<-read_sav("real_estate.sav")
dataspss <- as.data.frame(dataspss);dataspss


data1<-read_excel("sales.xlsx",1)
data1 <- as.data.frame(data1);data1

datacsv<-read.csv("sales.csv",1)
datacsv <- as.data.frame(datacsv);datacsv

#to find the structere
str(datacsv)
#to find the summary
summary(datacsv)
# individual numerical data
summary(datacsv$Net.Sales)



#clean statistical report
install.packages("psych")
library(psych)
describe(datacsv)


# Exploratory data analysis
install.packages("skimr")#skimmer




install.packages("DataExplorer")
library(corrplot)
corrplot()






# for correlatin
cor(data)


## Correlation Plot
install.packages("corrplot")



boxplot(data$y,
            main="Boxplot of DATA",
               ylab="Price",color="6",
        ylim=c(1000,4000),type="n",
        col = "5",las=1,asp=500)






