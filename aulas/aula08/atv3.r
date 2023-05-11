10 - 20 - 30

10-20 +20-20 +30-20
-10 +0 +10 = 0
-10*-10 + 10*10 = 200/2






salario <- c(3500, 2800, 4000, 3200, 3700, 2500, 3900, 3000, 3800, 2900)
idade <- c(28, 32, 25, 29, 31, 30, 26, 33, 27, 34)

media_salario <- mean(salario)
media_idade <- mean(idade)

dif_salario <-  salario - media_salario
dif_idade <- idade - media_idade

soma_dif <- sum(dif_salario * dif_idade)


cov <- soma_dif / (10 - 1)
cov
cor(salario,idade)
