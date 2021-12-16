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
Unit 2 - Practice 1

**STUDENT NAME AND CONTROL NUMBER:** 


Castro Cebreros Alejandro - 16211341 

Márquez Millán Seashell Vanessa - 17212153

**TEACHER NAME:** 
Jose Christian Romero Hernandez

**DATE OF DELIVERY:** 
October 29, 2020

</div>

<div align="Justify">

---
**1-.Find the interesting dataframe**

 ```R 
df <- read.csv(file.choose())
```

**2-.Read the csv and analyze the data with R**

````R
df
tail(df)
nrow(df)
head(df)
str(df)
ncol(df)
````
Now we change then columns names because was so large

```R
colnames(df) <-c("Year","Month","Check","OrgAct","UnicMob","CheckCum","OrgAct+","UnicMob+","Delec+","Country")

````
**3-.GRAPHICS**

**Dispersion grapgic**

```R
ggplot(df, aes(x = Month, y = Check, 
                   color=Year)) + 
  geom_point()

````
<p >
    <img alt="Evidence1" src="./G_1.png" >
</p>

**Facet graphiac**

````R
ggplot(data = df) +
  geom_point(mapping = aes(x = Month, y = Check)) +
  facet_wrap(~ Country, nrow = 2)

````
<p >
    <img alt="Evidence1" src="./G_2.png" >
</p>

**Simple regression graph**

````R
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
````

<p >
    <img alt="Evidence1" src="./G_3.png" >
</p>