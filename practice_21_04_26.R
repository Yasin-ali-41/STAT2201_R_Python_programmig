# FOR PRACTICE 
load(.Rdata)
Real_Estate_Data_SPSS <- read_excel("C:/Rr/Real_Estate_Data_SPSS.xlsx")


#for summary
#To check the dataset is it right 
head(dataCOMMA)  #it shows first six row with the variable name

#To know the obs and the data type
str(dataCOMMA)

#To know the simple summery to present the data
summary(dataCOMMA) # It shows the five number summry for the numerical data



#Clean statistical Repost 
#For this ,First install package psychology ,, it was derive to know the "Swiss knife"
install.packages("psych")
library(psych) #For load the function we want to get
describe(dataCOMMA) # It visualise the far better than "SUMMARY" function 
                    #It also shows sd,se,skew,kurt,mad(median absolute deviatin) trimmed mean,range


# Reggression in R
reg_for_dataCOMMA<- lm(y~x1,data = dataCOMMA)
summary(reg_for_dataCOMMA) # shows the linear model
 

# EXPLORATORY DATA ANALYSIS (EDA)
install.packages("skimr")
library(skimr)
skimr(dataCOMMA)
install.packages("rlang")
install.packages("skimr")
library(skimr)
skimr::skim(dataCOMMA)



install.packages("DataExplore")
library(DataExplorer)

# Create report
create_report(dataCOMMA) # It gives a HTML file by hyperlink
# Correlation Analysis
cor(dataCOMMA) # It shows pearson correlation by Default

cor_matrix<-cor(dataCOMMA,use = "complete.obs",method = "pearson")
print(cor_matrix)


# For correlation Plot
cor_matrix<-cor(dataCOMMA)

corrplot(cor_matrix
         ,method = "color",type = "lower",
         tl.cex = 0.8,
         addCoef.col = "black")
install.packages("corrplot")
library(corrplot)


boxplot(dataCOMMA$y,main=("Boxplot Of the dataset\"dataCOMMA"),
        border = par("fg"),
        ylab = "price",col="lightgray",abs=1,las=1)




