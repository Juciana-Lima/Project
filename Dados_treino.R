aves=c(22,28,37,34,13,24,39,5,33,32)

aves

length(aves)

max(aves)
min(aves)
sum(aves)
aves^2
aves/10

n.aves<-length(aves)
media.aves<-sum(aves)/n.aves
media.aves
sqrt(aves)
log10(aves)
log(aves)

1:10
5:16

seq(1,10,2)
seq(0.01,1,0.02)
seq(1,20,2)

rep(5,10)
rep(2,5)
rep("a",5)
rep(1:4,5)
rep
rep(1:4, each=2)
rep(c("A","B"),5)

#Treino e aprendizado#
##Gera uma distribuição uniforme##

temp2<-runif(200,8,10)
hist(temp2)

#Gera dados aleatórios com distribuição normal#
temp3<-rnorm(200,0,1)
hist(temp3)

sample(1:10,15,replace = TRUE)

moeda<-c("CARA","COROA")
moeda

sample(moeda,10,replace = TRUE)

exemplo<-sample(1:100,10)
exemplo
summary(exemplo)
View(exemplo)

order(exemplo)
order(exemplo,decreasing = TRUE)

rank(exemplo)
mean(exemplo)

barplot(exemplo)

pie(c(1,5,7,10))

exemplo(pie)


y<-c(110,120,90,70,50,80,40,40,50,30)
x<-1:10

plot(x,y,xlab="Var explanatória",ylab="Var resposta",pch=4, col="blue",
     main = "Gráfico Um")

v<-c(3,4,6,8,9)
w<-c(80,50,60,60,70)

points(v,w,col="red")

plot(1:10,1:10)


sex<-c("macho","femea")
sex

length(sex)

sexo<-c("Ma","Ma","Ma","Ma","Ma","Fe","Fe","Fe","Fe")
peso<-c(78,80,65,78,80,75,78,65,88)

sex.f<-factor(sexo)
length(sexo)
length(peso)
factor(sexo)
factor(peso)


plot(factor(sexo),peso)

stripchart(peso~sexo)


plot(1:10,1:10)

par(mfrow=c(1,2))

pie(rep(1,30),col=rainbow(30))

aves<-c(22,28,37,34,13,24,39,5,33,32)
arvores<-c(25,26,40,30,10,20,35,8,35,28)

stripchart(aves~arvores,pch=c(16,15),col=blues9)

dados<-read.csv("C:/Treino_R/Transito/dados_transito.csv",sep=";",header=TRUE)
View(dados)

dados$Ano
dados$Número.de.óbitos

library(dplyr)

meus_dados<-rename(dados,numero_obtidos=Número.de.óbitos)
View(meus_dados)

summary(meus_dados$numero_obtidos)
floor(mean(meus_dados$numero_obtidos, na.rm = TRUE))


var(meus_dados$numero_obtidos,na.rm = TRUE)
ceiling(var(meus_dados$numero_obtidos,na.rm = TRUE))
ceiling(sd(meus_dados$numero_obtidos,na.rm = TRUE))
ceiling(median(meus_dados$numero_obtidos,na.rm = TRUE))

tapply(meus_dados$numero_obtidos,summary)

lm(meus_dados$Ano~meus_dados$numero_obtidos,meus_dados)

prop.test(104,200,0.6,correct = F)
colnames(meus_dados)
row.names(meus_dados)

Trabalho = matrix(c(1,2,1,0, 3,3,6,1, 10,10,14,9, 6,7,12,11), 4, 4, 
dimnames = list(Receita=c("< 15mil", "15-25mil", "25-40mil", "> 40mil"), 
Satisfação=c("M.Insatisfeito", "P.Insatisfeito", "Mod.Satisfeito", 
             "M.Satisfeito")


fisher.test(Trabalho)














