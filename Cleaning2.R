##tidy2
#set work directory
filepath<-"/Users/KevinChang/Desktop"  #you'll obviously need to change this to yours
setwd(filepath)
#load the file in
filename<-"Panel_8595.csv"
Dataset<-read.csv(filename)
##Determinging the variables through the mean
Panel_0_87<-subset(Dataset, X.1==87)
Panel_0_95<-subset(Dataset, X.1==95)
summary(Panel_0_87)
summary(Panel_0_95)
# Renaming the variables
colnames(Dataset)[colnames(Dataset)=="QQ.kt.t.v."] <- "Plant_I.D."

colnames(Dataset)[colnames(Dataset)=="X.1"] <- "Year"

colnames(Dataset)[colnames(Dataset)=="X2"] <- "Employees"

colnames(Dataset)[colnames(Dataset)=="X5"] <- "Heat_Content_of_Gas"

colnames(Dataset)[colnames(Dataset)=="X4"] <- "Heat_Content_of_Oil"

colnames(Dataset)[colnames(Dataset)=="X3"] <- "Heat_Content_of_Coal"

colnames(Dataset)[colnames(Dataset)=="Y2"] <- "Sulfur_Dioxide"

colnames(Dataset)[colnames(Dataset)=="Y3"] <- "Nitrious_Oxide"

colnames(Dataset)[colnames(Dataset)=="Y1"] <- "Electricity"

colnames(Dataset)[colnames(Dataset)=="X1"] <- "Dollars"
## Viewing the dataset
View(Dataset)
##Convert all energy measurements (energy produced and heat contents) into daily averages, measured in Mwh.
Dataset <- transform(Dataset, Electricity = Dataset$Electricity/1000)
Dataset <- transform(Dataset, Electricity = Dataset$Electricity/365)
Dataset <- transform(Dataset, Heat_Content_of_Gas = Dataset$Heat_Content_of_Gas*0.00000029307)
Dataset <- transform(Dataset, Heat_Content_of_Oil = Dataset$Heat_Content_of_Oil*0.00000029307)
Dataset <- transform(Dataset, Heat_Content_of_Coal = Dataset$Heat_Content_of_Coal*0.00000029307)
View(Dataset)
Dataset <- transform(Dataset, Heat_Content_of_Gas = Dataset$Heat_Content_of_Gas/365)
Dataset <- transform(Dataset, Heat_Content_of_Oil = Dataset$Heat_Content_of_Oil/365)
Dataset <- transform(Dataset, Heat_Content_of_Coal = Dataset$Heat_Content_of_Coal/365)
View(Dataset)
##Convert all pollutants quantities, measured in annualized short tons, into daily averages.
Dataset <- transform(Dataset, Sulfur_Dioxide = Dataset$Sulfur_Dioxide/365)
Dataset <- transform(Dataset, Nitrious_Oxide = Dataset$Nitrious_Oxide/365)
View(Dataset)
##Convert all dollars (measured in 1973 $’s) into 2017 dollars.
Dataset <- transform(Dataset, Dollars = Dataset$Dollars*5.5132)
View(Dataset)
##Add a factor variable indicating whether or not Phase I of the Clean Air Act had already been announced or not (the CAA Phase I restrictions were announced in 1990).
Dataset$CAA <- ifelse(Dataset$Year>=90, 1, 0)
##Remove superfluous variables
Dataset_Final <- subset(Dataset,select=-c(TABLE,X,F1,F2))
View(Dataset_Final)
##Create tidy2.txt
write.table(Dataset_Final,"/Users/KevinChang/Desktop/tidy2.txt")
##############################################################################################################################
##tidy2a.txt
##Create another data set called tidy2_a.txt that averages all variables across all years for each plant for the 11 year period so that the tidy data set has 92 rows of observations for all of the relevant variables.
##Creating separate dataframes that contain the averages of each variable
library(plyr)
library(dplyr)
library(ggplot2)
tidy2a_1 <- aggregate(Electricity ~ Plant_I.D. , data=Dataset_Final, mean)
tidy2a_2 <- aggregate(Sulfur_Dioxide ~ Plant_I.D. , data=Dataset_Final, mean)
tidy2a_3 <- aggregate(Nitrious_Oxide ~ Plant_I.D. , data=Dataset_Final, mean)
tidy2a_4 <- aggregate(Dollars ~ Plant_I.D. , data=Dataset_Final, mean)
tidy2a_5 <- aggregate(Employees ~ Plant_I.D. , data=Dataset_Final, mean)
tidy2a_6 <- aggregate(Heat_Content_of_Coal ~ Plant_I.D. , data=Dataset_Final, mean)
tidy2a_7 <- aggregate(Heat_Content_of_Oil ~ Plant_I.D. , data=Dataset_Final, mean)
tidy2a_8 <- aggregate(Heat_Content_of_Gas ~ Plant_I.D. , data=Dataset_Final, mean)
tidy2a_9 <- aggregate(CAA ~ Plant_I.D. , data=Dataset_Final, mean)
View(tidy2a_1)
##Merging the dataframes
tidy2a_0<-(Reduce(function(x, y) merge(x, y, all=TRUE), list(tidy2a_1, tidy2a_2, tidy2a_3,tidy2a_4,tidy2a_5,tidy2a_6,tidy2a_7,tidy2a_8,tidy2a_9)))
View(tidy2a_0)
#Creating the tidy2a.txt file
write.table(tidy2a_0,"/Users/KevinChang/Desktop/tidy2_a.txt")
##############################################################################################################################
##tidy2b.txt
##Create another data set called tidy2_b.txt that aggregated (adds) all variables within a particular year across all 92 plants so that the tidy data set has 11 rows of observations for all of the relevant variables.
##Creating separate dataframes that contain the sum of each variable
tidy2b_1 <- aggregate(Electricity ~ Year , data=Dataset_Final, sum)
tidy2b_2 <- aggregate(Sulfur_Dioxide ~ Year , data=Dataset_Final, sum)
tidy2b_3 <- aggregate(Nitrious_Oxide ~ Year , data=Dataset_Final, sum)
tidy2b_4 <- aggregate(Dollars ~ Year , data=Dataset_Final, sum)
tidy2b_5 <- aggregate(Employees ~ Year , data=Dataset_Final, sum)
tidy2b_6 <- aggregate(Heat_Content_of_Coal ~ Year , data=Dataset_Final, sum)
tidy2b_7 <- aggregate(Heat_Content_of_Oil ~ Year , data=Dataset_Final, sum)
tidy2b_8 <- aggregate(Heat_Content_of_Gas ~ Year , data=Dataset_Final, sum)
tidy2b_9 <- aggregate(CAA ~ Year , data=Dataset_Final, sum)
View(tidy2b_1)
##Merging the dataframes
tidy2b_0<-(Reduce(function(x, y) merge(x, y, all=TRUE), list(tidy2b_1, tidy2b_2, tidy2b_3,tidy2b_4,tidy2b_5,tidy2b_6,tidy2b_7,tidy2b_8,tidy2b_9)))
View(tidy2b_0)
#Creating the tidy2a.txt file
write.table(tidy2b_0,"/Users/KevinChang/Desktop/tidy2_b.txt")






