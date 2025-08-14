#Objetivo: aplicar Machine Learning no R

#Como?
#AtravÃ©s de um exemplo simples

setwd("C:\\Treino_R")

#Base de dados
df<-read.csv("Transito\\Vitimas_DadosAbertos_20241212.csv",sep=";",header = TRUE, encoding = "UTF-8")
View(df)

set.seed(100)

#Separar dados de treino e teste de maneira randÃ´mica
linhas<-sample(1:length(df$qtde_obitos),length(df$qtde_obitos)*0.7)
#Dados de treino - 70%
treino = df[linhas,]

#Dados de teste - 30%
teste = df[-linhas,]

#Criar o modelo
library(rpart)
?rpart
modelo<-rpart(qtde_obitos~.,data=treino,control=rpart.control(cp=0))

#Realizar previsÃµes
teste$Previsão<-predict(modelo,teste)
View(teste)

#Analisar resultados
teste$P<-abs(round(teste$Previsão/teste$Preço,4)-1)
R_1<-summary(teste$P)
R_1

#Analisar distribuiÃ§Ã£o dos preÃ§os excluindo os 10% mais caros
hist(df$Preço[df$Preço<quantile(df$Preço,0.90)],breaks=10,labels=T)

R_Final_1<-summary(teste$P[teste$Preço>10000 & teste$Preço<70000])
R_1
R_Final_1



