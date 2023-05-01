library(forecast)
library(caret)
library(randomForest)
library(rpart)
library(rpart.plot)

#read csv file
satis_data <- read.csv('.../Satisfaction- Dummy.csv')

#partition data set
train_index <-sample(rownames(satis_data), dim(satis_data)[1]*0.6)
valid_index<-setdiff(rownames(satis_data),train_index)
train_data<-satis_data[train_index, ]
valid_data<-satis_data[valid_index, ]

#run linear regression from train data
sat_linmodel <- lm(Satisfied~Wifi.Service+Seat.Comfort+Food.and.Drink+Inflight.Entertainment+Leg.Room+Inflight.Service+Cleanliness, data= train_data)
summary(sat_linmodel)

#random forest
train_data$Satisfied<-as.factor(train_data$Satisfied)
valid_data$Satisfied<-as.factor(valid_data$Satisfied)

myforest<-randomForest(Satisfied ~ Seat.Comfort + Leg.Room + Wifi.Service, data = train_data)

predicted_values<-predict(myforest,newdata=valid_data)

#confusion matrix
confusionMatrix(relevel(as.factor(predicted_values),"0"),relevel(as.factor(valid_data$Satisfied),"0"))

#classification tree
classtree<- rpart (Satisfied ~ Wifi.Service + Seat.Comfort + Food.and.Drink + Inflight.Entertainment + Leg.Room + Inflight.Service + Cleanliness, data = train_data, method = "class")
prp(classtree)

predicted_values<-predict(classtree,newdata=valid_data)
accuracy(predicted_values, valid_data$rating)

