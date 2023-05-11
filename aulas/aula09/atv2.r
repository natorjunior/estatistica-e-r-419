url <- "https://raw.githubusercontent.com/natorjunior/db-atividades/main/base.csv"
dados <- read.csv(url,sep=';')
head(dados)
summary(dados)
model <-  lm(Notas~(Tempo_Rev+Tempo_Sono),data=dados)
new_dados <- data.frame(Tempo_Rev=35,Tempo_Sono=5)
predict(model, new_dados)


