# Practice 1 Unit 1

Test the Law Of Large Numbers for N random normally distributed numbers with mean = 0, stdev=1:

Create an R script that will count how many of these numbers fall between -1 and 1 and divide
by the total quantity of N

You know that E(X) = 68.2%
Check that Mean(Xn)->E(X) as you rerun your script while increasing N

Hint:
1. Initialize sample size
2. Initialize counter
3. loop for(i in rnorm(size))
4. Check if the iterated variable falls
5. Increase counter if the condition is true
6. return a result <- counter / N

## 1. Initialize sample size
``` scala 
sample = 1000
```

## 2. Initialize counter
``` scala
counter = 1
```

## 3. loop for(i in rnorm(size))
``` scala
for(i in rnorm(sample))
{ 
 
}
```

## 4. Check if the iterated variable falls
``` scala
if(i >= -1 & i <= 1)   
{
  
}
```

## 5. Increase counter if the condition is true
``` scala
counter = counter + 1
```

## 6. return a result <- counter / N
``` scala
result = ((counter/sample)*100)
```