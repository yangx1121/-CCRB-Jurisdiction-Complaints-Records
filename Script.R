#load in dataset
setwd("/Users/yx921121/Documents/GWU/Data Incubator")
install.packages("readxl")
library("readxl")
my_table <- read_excel("ccrb_datatransparencyinitiative_20170207.xlsx",sheet = 2, col_names = TRUE)

#identify unique record ID
colnames(my_table)
uniq_ID <- unique(my_table$UniqueComplaintId)
length(uniq_ID)

#calculate the proportaion of the most frequent borough
uniq_ID_table <- my_table[!duplicated(my_table[,c('UniqueComplaintId')]),]
summary(uniq_ID_table$`Borough of Occurrence`)
bor_freq<-data.frame(table(uniq_ID_table$`Borough of Occurrence`))
bor_freq[which.max(bor_freq$Freq),]

#calculate the average duration of complaints
uniq_ID_table$duration <- (uniq_ID_table$`Close Year` - uniq_ID_table$`Received Year`)
mean(uniq_ID_table$duration)

#subset 2016 dataset
uniq_2016 <- uniq_ID_table[uniq_ID_table$`Incident Year` == "2016",]
bor_freq_2016<-data.frame(table(uniq_2016$`Borough of Occurrence`))
bor_freq_2016
1102/26.29150

#find the year complaints about stop and frisk peaked is 2007
peak <- data.frame(table(uniq_ID_table$`Incident Year`,uniq_ID_table$`Complaint Contains Stop & Frisk Allegations`))
require(data.table)
setDT(peak)
colnames(peak) <- c("year","Boolean", "Freq")
#subset data from 2007 to 2016
true_comp <- peak[c(26:35),]
true_comp$year <- as.integer(true_comp$year)
#build linear regression model
linearmod <- lm(Freq ~ year, data = true_comp)
summary(linearmod)

#calculate the chi-square test statistic
test <- table(uniq_ID_table$`Is Full Investigation`, uniq_ID_table$`Complaint Has Video Evidence`)
chisq.test(test)

#use 2016 dataset
bor_freq_2016
792+1102+862+601+156
792/3513*36000
1102/3513*36000
862/3513*36000
601/3513*36000
156/3513*36000
8116.14/12
11292.91/23
8833.476/22
6158.839/16
1598.634/4
676.345/384.9274




uniq_table <- unique(my_table)
nrow(uniq_table)
View(uniq_table)
