dados <-  c()
for(i in 1:10){
    valor <- as.integer(readline(sprintf('digite o valor %d: ',i)))
    dados <- c(dados,valor)
}
media <- mean(dados)
desvio <- sd(dados)
print(dados)
print(media)
print(desvio)