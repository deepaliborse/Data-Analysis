# Q.1: Try to write a code for printing sequence of numbers 
# from 1 to 50 with the differences of 3, 5, 10

x <- seq(1,50,3)
x

y <- seq(1,50,7)
y

z <- seq(1,50,10)
z




# Q.2: What are the different data objects in R? and write syntax and example for 
# each and every object. 

# Answer:
# Everything in R is an object, which has 6 basic data types. 
# 1. character - "name", "alphabets"

# 2. numeric (real or decimal) - 2, 2.0

# 3. integer - 10L (the L tells R to store this as an integer)
# 
# 4. logical - TRUE, FALSE
# 
# 5. complex - 2+5i (2 is the real part and 5 is imaginary part)
# 
# 6. DataFrame - data.frame(column1=c(value1, value1, etc), column2 = c(value3, value4, etc))






# Q.3: Create Data frame with 3 columns and 5 rows and write a code to fetch and 
# delete row and a column using index and add new column and row to the existed 
# data frame 

df1=data.frame(CUtomerId=(1:5),Company=c("SAMSUNG","SAMSUNG","HAIER","HAIER","SONY"),
               Product=c(rep("oven",3),c(rep("TV",2)))) 
df1


# To fetch a row 
fetr <- df1[1,] 
print(fetr) 


# To fetch a column 
fetc <- df1[,1] 
print(fetc) 


# To delete a row 
delr <- df1[-c(1),]
print(delr) 


# To delete a column 
delc <- df1[,-c(1)] 
print(delc) 


# To add a row 
x <- c(1,2,3) 
addr <- rbind(df1,x) 
print(addr) 


# To add a column 
df1$sex <- c("m", "m", "f", "f", "m") 
print(df1)






# Q.4: Write nested if else statements to print whether the given number is negative, 
# positive or Zero 

# taking a value as input 

num <- 123 

if (num == 0)
{ print("NUMBER IS A ZERO") 
} else if(num>0)
{ print("NUMBER IS POSITIVE") 
} else
{ print("NUMBER IS NEGATIVE") 
  }




# 5.write a program to input any value and check whether it is character, numeric 
# or special character 

# taking a value as input 

result <- 123 

if (grepl('[^[:alnum:]]', result))
  { print("NUMBER IS A SYMBOL") 
  } else if(is.numeric(result))
    { print("INPUT VALUE IS NUMBER") 
    } else if(is.character(result))
    { print("INPUT VALUE IS CHARACTER") 
    } else
    { print("NUMBER IS OTHERS") 
    }





# 6. write difference between break and next also write examples for both. 
# 
# Answer:
#   A break statement is used inside a loop (repeat, for, while) to stop the 
#   iterations and flow the control outside of the loop. In a nested looping situation, 
#   where there is a loop inside another loop, this statement exits from the innermost 
#   loop that is being evaluated. 
# 
# The syntax of break statement is:
# 
#   if (test_expression) { 
#     break 
#     }

# Exaample for If-break
x <- 1:5 
for (val in x) 
{ if (val == 3){ 
    break 
} 
  print(val) 
  }


# A next statement is useful when we want to skip the current iteration of a loop 
# without terminating it. On encountering next, the R parser skips further evaluation 
# and starts next iteration of the loop. 
# The syntax of next statement is:
#   if (test_condition) { 
#     next 
#     }

# Example: Next statement
x <- 1:5 
for (val in x) { 
  if (val == 3){ 
    next 
  } 
  print(val) 
  }  

 



  
#Q.7: write a program to print a given vector in reverse format x= c(1,5.6,3,10,3.5,5)

v = c(1,5.6,3,10,3.5,5) 
print(v) 
rv = rev(v) 
print("The said vector in reverse order:") 
print(rv)
  




# 8.write a program to get the mode value of the given vector 
# ('a','b','c','t','a','c','r','a','c','t','z','r','v','t','u','e','t') 

v <- c("a","b","c","t","a","c","r","a","c","t","z","r","v","t","u","e","t") 
uniqv <- unique(v) 
print(uniqv[which.max(tabulate(match(v, uniqv)))])





# 9.Write a function to filter only data belongs to 'setosa' in species of Iris dataset.
# ( using dplyr package) 
install.packages('dplyr') 
library('dplyr') 
data("iris") 
df = filter(iris, Species =="setosa") 
df





# 10.Create a new column for iris dataset with the name of Means_of_obs, 
# which contains mean value of each row.( using dplyr package) 
data("iris") 
iris

iris_num <- as.data.frame(lapply(iris, as.numeric))

df <- cbind(iris[,c(1:4)],RowMean=rowMeans(iris_num))
df





# Q.11:Filter data for the "versicolor" and get only 'sepel_length' and Sepel _width' columns.
# (using dplyr package) 

data("iris") 

df = filter(iris, Species =="versicolor") 
df

dfc=df[,c("Sepal.Length","Sepal.Width")]
dfc




# Q.12:create below plots for the mtcars also write your inferences for each and every plot 
# (use ggplot package) Use Different ( Size , Colour )

# Scatter Plot
install.packages("ggplot2")
library(ggplot2)
ggplot(mtcars, aes(x = mpg, y = drat)) +geom_point(aes(color = factor(gear)))


#boxplot
library(ggplot2)
ggplot(mtcars, aes(x=as.factor(cyl), y=mpg)) + geom_boxplot(fill="slateblue", alpha=0.2) + 
  xlab("cyl")


#histogram
library(ggplot2)
ggplot(mtcars,aes(x=mpg)) + geom_histogram(binwidth=5)


#line graph
library(ggplot2)
ggplot(data = mtcars, mapping = aes(x = mpg, y = hp)) + geom_point(mapping = aes(color = cyl)) + 
  geom_smooth()


#bar graph
library(ggplot2)
ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) + geom_bar( ) + 
  scale_fill_hue(c = 40)





