x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152,131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
reta <- lm(y~x)
print(reta)
print(summary(reta))

valor <- 10
x_new <- data.frame(x=valor)
res <- predict(reta,x_new)
print(res)

plot(y,x,col = "blue",main = "Relação: Peso e Altura",
abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Peso em
Kg",ylab = "Altura em cm")

