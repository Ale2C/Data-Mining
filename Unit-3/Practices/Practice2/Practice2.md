<div align="center">
<img alt="Logo" src="https://www.tijuana.tecnm.mx/wp-content/themes/tecnm/images/logo_TECT.png" width=250 height=250>
</p>

**Technological Institute of Tijuana** 

**Academic Subdirectorate** 

**Systems and Computing Department** 

**SEMESTER:** 
August - December 2021

**CAREER:** 
Computer Systems Engineer

**MATTER:** 
Data Mining

**JOB NAME:** 
Unit 3 - Practice 2

**STUDENT NAME AND CONTROL NUMBER:** 


Castro Cebreros Alejandro - 16211341 

Márquez Millán Seashell Vanessa - 17212153

**TEACHER NAME:** 
Jose Christian Romero Hernandez

**DATE OF DELIVERY:** 
November 26, 2021

</div>

<div align="Justify">

**Assign the directory of the file**

```R 
getwd()
setwd("/home/chris/Documents/itt/Enero_Junio_2020/Mineria_de_datos/DataMining/MachineLearning/MultipleLinearRegression")
getwd()
```

**Importing the dataset**

```R 
dataset <- read.csv('50_Startups.csv')
```

**Encoding categorical data**

```R 
dataset$State = factor(dataset$State,
                       levels = c('New York', 'California', 'Florida'),
                       labels = c(1,2,3))

dataset
```

**Splitting the dataset into the Training set and Test set**
```R 
Install.packages('caTools')
library(caTools)
set.seed(123)
split <- sample.split(dataset$Profit, SplitRatio = 0.8)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)
```

**Fitting Multiple Linear Regression to the Training set**
```R 
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State)
regressor = lm(formula = Profit ~ .,
               data = training_set )

summary(regressor)
```

**Prediction the Test set results**

```R 
y_pred = predict(regressor, newdata = test_set)
y_pred
```

**Assigment: visualize the siple liner regression model with R.D.Spend**

<p >
  <img alt="Unit-3" src="./P2graph1.png" >
</p>

**Building the optimal model using Backward Elimination**
```R 
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State,
               data = dataset )
summary(regressor)

regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend,
               data = dataset )
summary(regressor)

regressor = lm(formula = Profit ~ R.D.Spend + Marketing.Spend,
               data = dataset )
summary(regressor)

regressor = lm(formula = Profit ~ R.D.Spend + Marketing.Spend,
               data = dataset )
summary(regressor)

y_pred = predict(regressor, newdata = test_set)
y_pred
```

**Homework analise the follow atomation backwardElimination function **
**Backward elimination is a process made in the Stepwise Regression model that focuses in adding and removing some predictors so that the model can have a lower prediction error, looking it like that, this machine learning technique is very useful and with the following code we can see the structure of how this work's. In the code we see that it has a for that will look in the lenght of variable "x" in that we have regressor that basically show's the asignation of formula and data, later we have maxVar that will return the maximum variable of the cofficcients of the summary of regressor later with if we see a comparasion between  of the max variable maxVar and sl, so it can "pick" what variables are gonna be valid in the graph.**
```R 
backwardElimination <- function(x, sl) {
  numVars = length(x)
  for (i in c(1:numVars)){
    regressor = lm(formula = Profit ~ ., data = x)
    maxVar = max(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"])
    if (maxVar > sl){
      j = which(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"] == maxVar)
      x = x[, -j]
    }
    numVars = numVars - 1
  }
  return(summary(regressor))
}

SL = 0.05
dataset = dataset[, c(1,2,3,4,5)]
training_set
backwardElimination(training_set, SL)
```