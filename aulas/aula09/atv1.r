x <-  c(1,2,3,4)
y <- c(3,5,6,8)
dados <- data.frame(x,y)
model <- lm(y~x,dados)
plot(y ~ x)
abline(model, col = "red")
print(summary(model))
predict(model,data.frame(x=20))
