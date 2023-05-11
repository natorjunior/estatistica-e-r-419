lista <- c(100,50,11,5,40,140,200)
media <- mean(lista)
desvio <- sd(lista)
vetor <- c()
for(x in lista){
   x_new <- (x-media)/(desvio)
   vetor <- c(vetor,x_new)
   print(x_new)
}



#iris$Sepal.Length <- vetor







lista <- c(100,50,11,5,40,140,200)
xmax <- max(lista)
xmin <- min(lista)



for(x in lista){
   x_new <- (x-xmin)/(xmax-xmin)
   print(x_new)
}
