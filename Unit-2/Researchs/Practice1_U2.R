
#CREATE DF
df <- read.csv(file.choose())

#Read and analize the data
df
tail(df)
nrow(df)
head(df)
str(df)
ncol(df)

#Change tne columns names because was so large
colnames(df) <-c("Year","Month","Check","OrgAct","UnicMob","CheckCum","OrgAct+","UnicMob+","Delec+","Country")

#First graphic
#it doesn't work
library(ggplot2)
ggplot(data=df, aes(x=Month, y=Check, col="green"))
plot(x=df$Month, y=df$Check)

#It work

#Form 1
ggplot(data = df) +
  geom_point(mapping = aes(x = Month, y = Check, color="Year"))

#Form 2
ggplot(df, aes(x = Month, y = Check, 
                   color=Year)) + 
  geom_point()

#Form 3
plot(x = df$Month, y = df$Check, col=df$Year,
     main = "Covid 2020-2021", xlab = "Month", ylab = "Positive")
legend(x = "topleft", legend = c("2020", "2021"), 
       fill = c("blue", "turquoise"), title = "Year")

#Second grapphic

ggplot(data = df) +
  geom_point(mapping = aes(x = Month, y = Check)) +
  facet_wrap(~ Country, nrow = 2)

#THIRD GRAPHIC
regressor = lm(formula = Check ~ Month,
               data = df)
summary(regressor)

ggplot() +
  geom_point(aes(x=df$Month, y=df$Check),
             color = 'red') +
  geom_line(aes(x = df$Month, y = predict(regressor, newdata = df)),
            color = 'blue') +
  ggtitle('Positivos segun la fecha') +
  xlab('Years') +
  ylab('Positive')

