#Aula 07 - Estatística básica com R

getwd()

#Mostra o local de trabalho atual

setwd()

#Utilizado na navegação das pastas

read.csv("tabela.csv")

library(readr)
tabela <- read.csv("tabela.csv", h=T)
View(tabela)

library(readr)
tabela <- read_delim("tabela.csv", ";", escape_double = FALSE, 
                     trim_ws = TRUE)
View(tabela)

summary(tabela)

#Definição do objeo principal

attach(tabela)

