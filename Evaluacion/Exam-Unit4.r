
getwd()
setwd("C:/Users/vanem/OneDrive/Documentos/9 SEMESTRE/Mineria/Repo mineria/DataMining/MachineLearning/LogisticRegression")
getwd()

#Importing the dataset
dataset <- read.csv(file.choose())
dataset = dataset[1:4]

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

TEM(dataset)

#Fitting K-Means to the dataset
set.seed(29)
kmeans = kmeans(x = dataset, centers = 3)
y_kmeans = kmeans$cluster


#Visualizing cluster