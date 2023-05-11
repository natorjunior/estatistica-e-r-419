data(iris)
head(iris)
colunas <- c('Sepal.Width','Sepal.Length','Petal.Width','Petal.Length')

for(col in colunas){
    #máximo e minimo da tamanho sepala 
    max_ <- max(iris[col])
    min_ <- min(iris[col])
    iris[col] <- (iris[col]- min_)/(max_-min_)

}
iris


#máximo e minimo da tamanho sepala 
max_sepal_w <- max(iris$Sepal.Width)
min_sepal_w <- min(iris$Sepal.Width)

#máximo e minimo da comprimento sepala 
max_sepal_l <- max(iris$Sepal.Length) 
min_sepal_l <- min(iris$Sepal.Length)

#máximo e minimo da tamanho petala 
max_petal_w <- max(iris$Petal.Width) 
max_petal_l <- max(iris$Petal.Length) 

#máximo e minimo da comprimento petala 
min_petal_w <- min(iris$Petal.Width)
min_petal_l <- min(iris$Petal.Length)

iris$Sepal.Width <- (iris$Sepal.Width- min_sepal_w)/(max_sepal_w-min_sepal_w)
iris$Sepal.Length <- (iris$Sepal.Length- min_sepal_l)/(max_sepal_l-min_sepal_l)

iris$Petal.Width <- (iris$Petal.Width- min_petal_w)/(max_petal_w-min_petal_w)
iris$Petal.Length <- (iris$Petal.Length- min_petal_l)/(max_petal_l-min_petal_l)

