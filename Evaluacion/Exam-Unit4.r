#Chose the location we want woork
getwd()
setwd("C:/Users/vanem/OneDrive/Documentos/9 SEMESTRE/Mineria/Repo mineria/DataMining/MachineLearning/LogisticRegression")
getwd()

#Importing the dataset
dataset <- read.csv(file.choose())
dat1 = dataset[1:4]
dat2 = dataset[3:4]

# Using the elbow method to find the optimal number of clusters
TEM <- function(dataset){
        set.seed(6)
        wcss = vector()
        for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)
        plot(1:10,
             wcss,
             type = 'b',
             main = paste('The Elbow Method'),
             xlab = 'Number of clusters',
             ylab = 'WCSS')
}

TEM(dat1)
TEM(dat2)

#Fitting K-Means to the dataset
set.seed(29)
kmeans = kmeans(x = dataset, centers = 3)
y_kmeans = kmeans$cluster


#Visualizing cluster
library(cluster)
#Sepal lenght and Petal width
clusplot(dat1,
         y_kmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of customers'),
         xlab = 'Sepal lenght',
         ylab = 'Petal width')

#Petal lenght and Petal width
clusplot(dat2,
         y_kmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of customers'),
         xlab = 'Petal lenght',
         ylab = 'Petal width')