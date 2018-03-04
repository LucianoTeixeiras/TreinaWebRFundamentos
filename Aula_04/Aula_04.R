#Aula 04 - Estruturas básicas no R: vetores e objetos

nome <- "Luciano"
nome

#Para adicionar um objeto é necessário utilizar aspas

#Para adicionar outros caracteres em um outro objeto, é necessário a 
#utilização de aspas.

nomes <- c("Vinicius","João","Maria")
nomes

#Vetor é uma coleção de objetos
a<-c(1,2,3,4,5,6)
b<-c(6,7,8,9)
c<-c(a,b)
c
dist(c)
unique(c)

#Os vetores podem ter números e objetos

vetor<-c("a",1,"b",2)
vetor

#Gerando números aleatórios
sample(x=1:50)

sample(x=1:10, size = 5)
amostra <- sample(x=1:50, size = 10, replace = T)
amostra

#Indexação

amostra[2]
amostra[10]

amostra[7:8]

summary(amostra)
