########################################
##Learning and testing code

#filepath<-"/Users/KevinChang/Desktop"  #you'll obviously need to change this to yours
#setwd(filepath)
#read.table("Panel_8595.Txt")
#filename<-"Panel_8595.csv"
#Dataset<-read.csv(filename)
#summary(Dataset)
#View(Dataset)
#read.table(Dataset)
#sd(Dataset)
#Panel_0_87<-subset(Dataset, X.1==87)
#Panel_0_95<-subset(Dataset, X.1==95)
#summary(Panel_0_87)
#summary(Panel_0_95)
# Rename a column in R
#colnames(Panel_0_87)[colnames(Panel_0_87)=="X.1"] <- "Year"
#colnames(Panel_0_95)[colnames(Panel_0_95)=="X.1"] <- "Year"
#colnames(Panel_0_87)[colnames(Panel_0_87)=="X2"] <- "Employees"
#colnames(Panel_0_95)[colnames(Panel_0_95)=="X2"] <- "Employees"
#summary(Panel_0_87)
#colnames(Panel_0_87)[colnames(Panel_0_87)=="X5"] <- "Heat content of gas"
#colnames(Panel_0_95)[colnames(Panel_0_95)=="X5"] <- "Heat content of gas"
#summary(Panel_0_87)
#colnames(Panel_0_87)[colnames(Panel_0_87)=="X4"] <- "Heat content of oil"
#colnames(Panel_0_95)[colnames(Panel_0_95)=="X4"] <- "Heat content of oil"
#summary(Panel_0_87)
#colnames(Panel_0_87)[colnames(Panel_0_87)=="X3"] <- "Heat content of coal"
#colnames(Panel_0_95)[colnames(Panel_0_95)=="X3"] <- "Heat content of coal"
#summary(Panel_0_87)
#colnames(Panel_0_87)[colnames(Panel_0_87)=="Y2"] <- "Sulfur Dioxide"
#colnames(Panel_0_95)[colnames(Panel_0_95)=="Y2"] <- "Sulfur Dioxide"
#summary(Panel_0_87)
#colnames(Panel_0_87)[colnames(Panel_0_87)=="Y3"] <- "Nitrious Oxide"
#colnames(Panel_0_95)[colnames(Panel_0_95)=="Y3"] <- "Nitrious Oxide"
#summary(Panel_0_87)
#colnames(Panel_0_87)[colnames(Panel_0_87)=="Y1"] <- "Electricity"
#colnames(Panel_0_95)[colnames(Panel_0_95)=="Y1"] <- "Electricity"
#summary(Panel_0_87)
#colnames(Panel_0_87)[colnames(Panel_0_87)=="X1"] <- "Dollars"
#colnames(Panel_0_95)[colnames(Panel_0_95)=="X1"] <- "Dollars"
#summary(Panel_0_87)
#summary(Panel_0_95)
#Panel_0_87<-subset(Dataset, X.1==87)
#Panel_0_95<-subset(Dataset, X.1==95)

#Electricity_87 <- c(Panel_0_87$Electricity/1000)
#View(Electricity)
#View(Panel_0_87)
#Electricity_95 <- c(Panel_0_95$Electricity/1000)
#df<-Panel_0_87(Electricity_87)
#Panel_0_87<-transform(Panel_0_87,electricity_mwh = Electricity_87)
#View(Panel_0_87)
#Panel_0_95<-transform(Panel_0_95,electricity_mwh = Electricity_95)
#View(Panel_0_95)
#Panel_0_87<-transform(Panel_0_87,electricity_mwh_da = Electricity_87/365)
#View(Panel_0_87)
#Panel_0_95<-transform(Panel_0_95,electricity_mwh_da = Electricity_95/365)
#View(Panel_0_95)
#Panel_0_87<-transform(Panel_0_87,electricity_mwh = Electricity_87)
#View(Panel_0_87)
#Panel_0_95<-transform(Panel_0_95,electricity_mwh = Electricity_95)
#View(Panel_0_95)
#Sulfur_Dioxide_87 <- c(Panel_0_87$Sulfur.Dioxide)
#Nitrious_Oxide_87 <- c(Panel_0_87$Nitrious.Dioxide)
#Sulfur_Dioxide_95 <- c(Panel_0_95$Sulfur.Dioxide)
#Nitrious_Oxide_95 <- c(Panel_0_95$Nitrious.Dioxide)
#Panel_0_87<-transform(Panel_0_87,Sulfur_Dioxide_87_da = Sulfur_Dioxide_87/365)

#Panel_0_87<-transform(Panel_0_87,Nitrious_Oxide_87_da = Nitrious_Oxide_87/365)

#Panel_0_95<-transform(Panel_0_95,Sulfur_Dioxide_95_da = Sulfur_Dioxide_95/365)

#Panel_0_95<-transform(Panel_0_95,Nitrious_Oxide_95_da = Nitrious_Oxide_95/365)

#View(Panel_0_87)
#View(Panel_0_95)

#Dollars_87 <- c(Panel_0_87$Dollars)
#Dollars_95 <- c(Panel_0_95$Dollars)

#Panel_0_87<-transform(Panel_0_87,Dollars_87_2017 = Dollars_87*5.5132)

#Panel_0_95<-transform(Panel_0_95,Dollars_95_2017 = Dollars_95/5.5132)
#View(Panel_0_87)
#View(Panel_0_95)
#Panel_0_87<-transform(Panel_0_87,Dollars_87_2017 = Dollars_87*5.5132)

#Panel_0_95<-transform(Panel_0_95,Dollars_95_2017 = Dollars_95/5.5132)
#CAA_87 <- c(Panel_0_87$Year)
#CAA_95 <- c(Panel_0_95$Year)

#Panel_0_87<-transform(Panel_0_87,CAA_87 = Dollars_87*5.5132)

#Panel_0_95<-transform(Panel_0_95,CAA_95 = Dollars_95/5.5132)

#if(Panel_0_87$Year > 90){Panel_0_87<-transform(Panel_0_87,CAA_87 = 1)}else  {Panel_0_87<-transform(Panel_0_87,CAA_87 = 0)}
#if(Panel_0_95$Year > 90){Panel_0_95<-transform(Panel_0_95,CAA_95 = 1)}else  {Panel_0_95<-transform(Panel_0_95,CAA_95 = 0)}

#View(Panel_0_87)
#View(Panel_0_95)
#library(plyr)
#Panel_1 <- rbind.fill(Panel_0_87, Panel_0_95)
#View(Panel_1)
#colnames(Panel_0_87)[colnames(Panel_0_87)=="Dollars_87_2017"] <- "Dollars"
#colnames(Panel_0_95)[colnames(Panel_0_95)=="Dollars_95_2017"] <- "Dollars"
#colnames(Panel_0_87)[colnames(Panel_0_87)=="Nitrious_Oxide_87_da"] <- "Nitrious_Oxide_da"
#colnames(Panel_0_95)[colnames(Panel_0_95)=="Nitrious_Oxide_95_da"] <- "Nitrious_Oxide_da"
#colnames(Panel_0_87)[colnames(Panel_0_87)=="Sulfur_Dioxide_87_da"] <- "Sulfur_Dioxide_da"
#colnames(Panel_0_95)[colnames(Panel_0_95)=="Sulfur_Dioxide_95_da"] <- "Sulfur_Dioxide_da"
#colnames(Panel_0_87)[colnames(Panel_0_87)=="CAA_87"] <- "CAA"
#colnames(Panel_0_95)[colnames(Panel_0_95)=="CAA_95"] <- "CAA"
#View(Panel_0_87)
#View(Panel_0_95)

#Panel_2 <- subset(Panel_1,select=-c(TABLE,QQ.kt.t.v.,X,F1,F2))
#View(Panel_2)
#Panel_2<-transform(Panel_2,Heat_Content_of_Coal = Panel_2$Heat.content.of.coal *0.00000029307)
#Panel_2<-transform(Panel_2,Heat_Content_of_Oil = Panel_2$Heat.content.of.oil *0.00000029307)
#Panel_2<-transform(Panel_2,Heat_Content_of_Gas = Panel_2$Heat.content.of.gas *0.00000029307)
#View(Panel_2)
#colnames(Panel_2)[colnames(Panel_2)=="Sulfur.Dioxide"] <- "SD"
#colnames(Panel_2)[colnames(Panel_2)=="Nitrious.Dioxide"] <- "NO"
#colnames(Panel_2)[colnames(Panel_2)=="Heat.content.of.coal"] <- "HC"
#colnames(Panel_2)[colnames(Panel_2)=="Heat.content.of.oil"] <- "HO"
#colnames(Panel_2)[colnames(Panel_2)=="Heat.content.of.gas"] <- "HG"
#View(Panel_2)
#Panel_3 <- subset(Panel_2,select=-c(Electricity,SD,NO,HC,HO,HG,electricity_mwh))

#View(Panel_3)

#View(Dataset)
########################################
#set work directory
filepath<-"/Users/KevinChang/Desktop"  #you'll obviously need to change this to yours
setwd(filepath)
#load the file in
filename<-"Panel_8595.csv"
Dataset<-read.csv(filename)
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
##tidy2a.txt
##install.packages("dplyr")
#library(plyr)
#library(dplyr)
#library(ggplot2)
##Create another data set called tidy2_a.txt that averages all variables across all years for each plant for the 11 year period so that the tidy data set has 92 rows of observations for all of the relevant variables.
##Creating separate dataframes that contain the averages of each variable
tidy2a_1 <- aggregate(Electricity ~ Plant_I.D. , data=tidy2b, mean)
tidy2a_2 <- aggregate(Sulfur_Dioxide ~ Plant_I.D. , data=tidy2b, mean)
tidy2a_3 <- aggregate(Nitrious_Oxide ~ Plant_I.D. , data=tidy2b, mean)
tidy2a_4 <- aggregate(Dollars ~ Plant_I.D. , data=tidy2b, mean)
tidy2a_5 <- aggregate(Employees ~ Plant_I.D. , data=tidy2b, mean)
tidy2a_6 <- aggregate(Heat_Content_of_Coal ~ Plant_I.D. , data=tidy2b, mean)
tidy2a_7 <- aggregate(Heat_Content_of_Oil ~ Plant_I.D. , data=tidy2b, mean)
tidy2a_8 <- aggregate(Heat_Content_of_Gas ~ Plant_I.D. , data=tidy2b, mean)
tidy2a_9 <- aggregate(CAA ~ Plant_I.D. , data=tidy2b, mean)
View(tidy2a_1)
##Merging the dataframes
tidy2a_0<-(Reduce(function(x, y) merge(x, y, all=TRUE), list(tidy2a_1, tidy2a_2, tidy2a_3,tidy2a_4,tidy2a_5,tidy2a_6,tidy2a_7,tidy2a_8,tidy2a_9)))
View(tidy2a_0)
#Creating the tidy2a.txt file
write.table(tidy2a_0,"/Users/KevinChang/Desktop/tidy2a.txt")
##tidy2b.txt
#tidy2b<-subset(Dataset_Final)
#na.omit(tidy2b)

#View(tidy2b)
#aggregate(tidy2b[2:3], list(tidy2b$Electricity),mean)
#rbind(Electricity=c(aggregate(Electricity~ Year,data = tidy2b,sum)),
#      Sulfur_Dioxide=c(aggregate(Sulfur_Dioxide~ Year,data = tidy2b,sum)),
#      Nitrious_Oxide=c(aggregate(Nitrious_Oxide~ Year,data = tidy2b,sum)),
#      Dollars=c(aggregate(Dollars~ Year,data = tidy2b,sum)))
#  Electricity=c(aggregate(Electricity~ Year,data = tidy2b,sum))
#  Electricity=c(aggregate(Electricity~ Year,data = tidy2b,sum))
#Electricity=c(aggregate(Electricity~ Year,data = tidy2b,sum))
#Electricity=c(aggregate(Electricity~ Year,data = tidy2b,sum)))

#E<-c((aggregate(Electricity~ Year,data = tidy2b,sum)))
########
#aggregate(Electricity~ Year,data = tidy2b,sum)
#aggregate(Sulfur_Dioxide~ Year,data = tidy2b,sum)
#aggregate(Nitrious_Oxide~ Year,data = tidy2b,sum)
#aggregate(Dollars~ Year,data = tidy2b,sum)
#aggregate(Employees~ Year,data = tidy2b,sum)
#aggregate(Heat_Content_of_Coal~ Year,data = tidy2b,sum)
#aggregate(Heat_Content_of_Oil ~ Year,data = tidy2b,sum)
#aggregate(Heat_Content_of_Gas~ Year,data = tidy2b,sum)
#aggregate(CAA~ Year,data = tidy2b,sum)



#######

######
##Create another data set called tidy2_b.txt that aggregated (adds) all variables within a particular year across all 92 plants so that the tidy data set has 11 rows of observations for all of the relevant variables.
##Creating separate dataframes that contain the sum of each variable
tidy2b_1 <- aggregate(Electricity ~ Year , data=tidy2b, sum)
tidy2b_2 <- aggregate(Sulfur_Dioxide ~ Year , data=tidy2b, sum)
tidy2b_3 <- aggregate(Nitrious_Oxide ~ Year , data=tidy2b, sum)
tidy2b_4 <- aggregate(Dollars ~ Year , data=tidy2b, sum)
tidy2b_5 <- aggregate(Employees ~ Year , data=tidy2b, sum)
tidy2b_6 <- aggregate(Heat_Content_of_Coal ~ Year , data=tidy2b, sum)
tidy2b_7 <- aggregate(Heat_Content_of_Oil ~ Year , data=tidy2b, sum)
tidy2b_8 <- aggregate(Heat_Content_of_Gas ~ Year , data=tidy2b, sum)
tidy2b_9 <- aggregate(CAA ~ Year , data=tidy2b, sum)
View(tidy2b_1)
##Merging the dataframes
tidy2b_0<-(Reduce(function(x, y) merge(x, y, all=TRUE), list(tidy2b_1, tidy2b_2, tidy2b_3,tidy2b_4,tidy2b_5,tidy2b_6,tidy2b_7,tidy2b_8,tidy2b_9)))
View(tidy2b_0)
#Creating the tidy2a.txt file
write.table(tidy2b_0,"/Users/KevinChang/Desktop/tidy2b.txt")
######
##tidy2b_1= tidy2b(E)
#as.tidy2b.matrix(agg) 
#View(agg)
#View(Electricity)
#View(E)
#library(dplyr)
#tidy2b %>%
#  group_by(Year, Plant_I.D.) %>% 
#  summarise_each(funs(sum))

#agg <- aggregate(list(tidy2b$Electricity, tidy2b$Sulfur_Dioxide, tidy2b$Nitrious_Oxide, tidy2b$Dollars, tidy2b$Employees,tidy2b$Heat_Content_of_Coal,tidy2b$Heat_Content_of_Oil,tidy2b$Heat_Content_of_Gas,tidy2b$CAA), by = list(tidy2b$Plant_I.D., tidy2b$Year), sum)
#View(agg)
##
#library(swirl)
#install_course("Data_Analysis")




