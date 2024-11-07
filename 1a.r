library(ggplot2)
data("iris")
head("iris")
iris_data <- iris[, -5]
k <- 3
set.seed(123)
kmeans_result <- kmeans(iris_data, centers = k, nstart = 25)
print(kmeans_result)
iris$Cluster <- as.factor(kmeans_result$cluster)
ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Cluster, shape = Species)) +
  geom_point(size = 3) +
  labs(title = "K-means Clustering of Iris Dataset",
       x = "Petal Length", y = "Petal Width") +
  theme_minimal()
