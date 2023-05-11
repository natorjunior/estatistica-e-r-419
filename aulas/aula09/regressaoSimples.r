
#multipla 
y<- c(21,21,23,22,19,18)
x1<- c(110,110,93,110,175,105)
x2<- c(2620,2875,2320,3215,3440,3460)
dataframe <- data.frame(y,x1,x2)
print(dataframe)



relacao <- lm(y~(x1+x2),data=dataframe)
print(relacao)
print(summary(relacao))

new_x1 <- 105
new_x2 <- 3460
new_dataframe <- data.frame(x1=new_x1,x2=new_x2)
resultado <- predict(relacao,new_dataframe)
print(resultado)

