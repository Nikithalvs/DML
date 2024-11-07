3.A

install.packages("rpart")
library(rpart)
data(iris)

new <-iris[-5]
head (new)
ind <- sample (2,nrow(iris),replace = TRUE, prob=c(0.8,0.2))
train <- iris[ind == 1,]
test <- iris[ind == 2,]
tree <- rpart(Species~.,train)
print(tree)
install.packages("rpart.plot")
library(rpart.plot)
rpart.plot(tree)

3.B

# Define a vector of numbers
numbers <- c(1, 2, 3, 4, 5)

# Use a for loop to print each element
for (num in numbers) {
  print(paste("Current number:", num))
}