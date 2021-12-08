
#WHERE WE GO TO WORK
getwd()
setwd("C:/Users/vanem/OneDrive/Documentos/9 SEMESTRE/Mineria/Repo mineria/DataMining/MachineLearning/LogisticRegression")
getwd()

#CALL THE LIBRARY

library(e1071)     
library(naivebayes) 
library(ElemStatLearn)
library(caTools)
library(ggplot2)

#IMPORTING THE DF

dataset<-read.csv("C:/Users/vanem/OneDrive/Documentos/9 SEMESTRE/Mineria/Repo mineria/DataMining/MachineLearning/SVM/Social_Network_Ads.csv")
dataset = dataset[3:5]

#ENCODING THE TARGET FEATURES AS FACTOR

dataset$Purchased=factor(dataset$Purchased,levels = c(0,1))

#SPLIT THE DF INTO THE TRAINIG SET AND TEST SET

set.seed(123)
split=sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set=subset(dataset,split==TRUE)
test_set=subset(dataset,split==FALSE)

#FEATURE SCALING

training_set[-3]=scale(training_set[-3])
test_set[-3]=scale(test_set[-3])

#FITTING NAIVE BAYES TO THE TRAINING SET

classifier=naive_bayes(formula=Purchased ~ . , 
                       data=training_set,
                       type='C-classification',
                       kernel='linear')

#PREDICTING TEST RESULT

y_pred=predict(classifier,newdata=test_set[-3])
y_pred

#CONFUSION MATRIX

cm=table(test_set[, 3],y_pred)
cm

#VISUALITATION