#Unit 2 -Evaluation

#First we select the csv file that we will use
Movies <- read.csv(file.choose())

#We wont use all the genres so we will filter it to select specific ones
filterGenre <- Movies$Genre %in% c("action","adventure","animation","comedy","drama")

dffilter <- Movies[filterGenre,]

#Same as the genres we filter to select the studios we will need
filterStudio <- dffilter$Studio %in% c("Buena Vista Studios","Fox","Paramount Pictures","Sony","Universal","WB")

dfMovie <- dfffilter[filterStudio,]

#We use libraries extrafont for selecting a custom font and ggplot for the graph
library(extrafont)
library(ggplot2)

