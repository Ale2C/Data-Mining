#Unit 2 -Evaluation

#First we select the csv file that we will use
Movies <- read.csv(file.choose())

#Rename the columns 
colnames(Movies) <- c("Dayofweek", "Director", "Genre", "MovieTitle", "RealseDate", "Studio", "AdjustedGroosMill","Budget", "GrossMill","IMDbRating", "MovieLensRating", "OverseasMill","Overseas", "ProfitMill", "Profit", "RuntimeMin", "UsMill", "GrossUS")

#We wont use all the genres so we will filter it to select specific ones
dfgenre <- Movies$Genre %in% c("action","adventure","animation","comedy","drama")

filtermovies <- Movies[dfgenre,]

#Same as genre, we use the same method with the studios
dfstudio <- filtermovies$Studio %in% c("Buena Vista Studios","Fox","Paramount Pictures","Sony","Universal","WB")

#We make a new dataframe with the other fitered dataframe
Finalmovies <- filtermovies[dfstudio,]

#We use libraries extrafont for selecting a custom font and ggplot for the graph
library(extrafont)
library(ggplot2)

#Import and load fonts 
font_import()
loadfonts()

#We create the structure of the graph
u <- ggplot(Finalmovies, aes(x = Genre, y = GrossUS))
t <- u + geom_jitter(aes(color = Studio, size = Budget)) + geom_boxplot (alpha = 0.5) 
t + 
  xlab("Genre") +
  ylab("Gross % US") +
  ggtitle("Domestic Gross % by Genre") +
  theme(axis.title.x = element_text(color = "Purple", size=30,  face = "bold"),
        axis.title.y = element_text(color = "Purple", size=30,  face = "bold"),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        legend.title = element_text(size = 25),
        legend.text = element_text(size = 15),
        legend.justification = c(1,.5),
        text = element_text( family = "Arial"),
        plot.title = element_text(color = "Black",
                                  size = 35,
                                  hjust = 0.5,
                                  face = "bold"))