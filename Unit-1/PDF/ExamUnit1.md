<p align="center">
    <img alt="Logo" src="https://www.tijuana.tecnm.mx/wp-content/uploads/2021/08/liston-de-logos-oficiales-educacion-tecnm-FEB-2021.jpg" width=850 height=250>
</p>

<H2><p align="Center">TECNOLÓGICO NACIONAL DE MÉXICO</p></H2>

<H2><p align="Center">INSTITUTO TECNOLÓGICO DE TIJUANA</p></H2>

<H2><p align="Center">SUBDIRECCIÓN ACADÉMICA</p></H2>

<H2><p align="Center">DEPARTAMENTO DE SISTEMAS Y COMPUTACIÓN</p></H2>

<H2><p align="Center">NOMBRE DE LOS ALUMNOS: </p></H2>

<H2><p align="Center">CASTRO CEBREROS ALEJANDRO</p></H2>

<H2><p align="Center">MARQUEZ MILLAN SEASHELL VANESSA</p></H2>

<H2><p align="Center">Carrera: Ingeniería Informática</p></H2>

<H2><p align="Center">Semestre: 9no </p></H2>

<H2><p align="Center">MATERIA: Mineria de datos</p></H2>

<H2><p align="Center">PROFESOR: JOSE CHRISTIAN ROMERO HERNANDEZ</p></H2>

<H2><p align="Center">Practica evaluatoria 1</p></H2>

<H2><p align="Center">Unidad 1</p></H2>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
---

# DESARROLLO <br>
## Abstrac

In that practice we use the program R studios and create a diferents graphics with the comands used in class too we did the analitics of the data frames, we use differntes funccions for connect the schemma and to do opperations 

<br><br>

**Generate scatter-plot**<br>
The first thing is select the dataframe, for that we need to create a variable where save that df, and chose the correct file then create the vectors needs with that we put together the df and the vectors, but before we revise if the count of each vector it was the correct, and we did only one vector for after put with the principal df, the last thing was the import the library and made the graphic.
<br>
```scala
Frames <- read.csv(file.choose())
Frames
Country_Code <- c("ABW"...)
Life_Expectancy_At_Birth_1960 <- c(65...)
Life_Expectancy_At_Birth_2013 <- c(75..)
Life_Expectative <- Life_Expectancy_At_Birth_1960 + Life_Expectancy_At_Birth_2013
mydf <- data.frame(ContryCode= Country_Code, LifeExpec=Life_Expectative )
merged <- merge(Frames, mydf, by.x = "Country.Code", by.y = "ContryCode")
head(merged)
library(ggplot2)
qplot(data=merged, x=Fertility.Rate, y=LifeExpec, color=Region, size=Country.Code) 

```
<br>

<p align="center">
    <img alt="Logo" src="./../Media/Evidence1.png" >
</p>
<br><br><br>

**Create graphic for each year**<br>
Well in this case first we made a filter using the df with the vectors and select the year we want then only we made the graphic <br>

```scala
filter60 <- merged[merged$Year == 1960,]
filter13 <- merged[merged$Year == 2013,]
qplot(data=filter60, x=Fertility.Rate, y=LifeExpec, color=Region, main="Year 1960")
qplot(data=filter13, x=Fertility.Rate, y=LifeExpec, color=Region, main="Year 2013")
```
<p align="center">
    <img alt="Logo" src="./../Media/Evidence1960.png" >
</p>
<p align="center">
    <img alt="Logo" src="./../Media/Evidence2013.png" >
</p>


**Comparison of the two periods**
<div align="Justify">
With the information shown in the graphs, we can see a great change in the fertility rate that has dropped considerably in 2013 than in 1960. Among the changes, it can be seen that the African region continues to have the highest fertility rate even after 53 years, which, compared to European countries, continue with a low rate. The region that saw the most changes was Asia than in 1960 most of their countries had a rate of 4 onwards and then in 2013 their rate is less than 4. In the other regions, a change in their fertility rate could be seen, but not as drastic as the regions mentioned above. There are many reasons for the change in fertility of each country these can be personal, economic, social or political, a serious example in the Asian region in China that had its policy of only having one child per couple to better control overpopulation in the country, this law was established in 1979, seeing this we can see its results with the 2013 graph.
</div>
