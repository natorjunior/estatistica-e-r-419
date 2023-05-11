data(iris)
head(iris)

#máximo e minimo da tamanho sepala 
mean_sepal_w <- mean(iris$Sepal.Width)
sd_sepal_w <- sd(iris$Sepal.Width)


iris$Sepal.Width <- (iris$Sepal.Width- mean_sepal_w)/sd_sepal_w

mean(iris$Sepal.Width)
sd(iris$Sepal.Width)
