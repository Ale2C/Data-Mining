Frames <- read.csv(file.choose())
Frames

library(ggplot2)
qplot(data=Frames, x=Fertility.Rate, y=Year, color=Region, size=I(1))#Don't find life expectative foy Y 