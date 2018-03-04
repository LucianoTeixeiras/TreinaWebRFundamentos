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

#Aula 07 - Regressões Lineares

tabela
dados <-tabela

dados
View(dados)

modelo <-lm(tamanho_cm~adubo_gr)

summary(dados)

anova(modelo)
summary(modelo)

#Aula 07 - Regressões Lineares - Parte 2 - Gráficos de regressão liner

#Fazendo gráfico com o comando polt

plot(tamanho_cm~adubo_gr)

curve(-2.88133+0.72110*x,add = T)

plot(tamanho_cm~adubo_gr,xlab = 'Quantidade de Adubo em (Kg)', ylab = 'Crescimento da Planta em (Cm)', pch = 16)

curve(-2.88133+0.72110*x,add = T, lty = 2)

#Aula 07 -  Parte 01 - Análise de variância

library(readr)
tabela2 <- read_delim("tabelaMarca.csv", ";", escape_double = FALSE, 
                     trim_ws = TRUE)
View(tabela2)

summary(tabela2)

attach(tabela2)

#Definição do problema/pergunta

#H1: A marca do adubo altera o crescimento da planta?
#H0: Não existe diferença entre as marcas de adubo

modeloaov <- aov(tamanho_cm~adubo_marca)

summary(modeloaov)

summary(tabela2)

#Tapply calcula as médias para variável x categórito
medias<-tapply(tamanho_cm, adubo_marca, mean)

#Aula 07 -  Parte 02 - Gráficos ANOVA

#Pacote para construção para o gráfico de ANOVA

install.packages("gplots")
library(gplots)

barplot2(medias)

barplot2(medias, ylab = 'Crescimento da Planta em (Cm)', xlab = 'Marca do Adubo')

barplot2(medias, ylab = 'Crescimento da Planta em (Cm)', xlab = 'Marca do Adubo', names.arg = c("Marca A","Marca B"))

barplot2(medias, 
         ylab = 'Crescimento da Planta em (Cm)', 
         xlab = 'Marca do Adubo', 
         names.arg = c("Marca A","Marca B"),
         col = c("green", "blue"))

#Calclando o erro padrão
erros<-tapply(tamanho_cm, adubo_marca, sd)/sqrt(tapply(tamanho_cm, adubo_marca, length))

barplot2(medias, 
         ylab = 'Crescimento da Planta em (Cm)', 
         xlab = 'Marca do Adubo', 
         names.arg = c("Marca A","Marca B"),
         col = c("green", "blue"),
         plot.ci = T,ci.u = medias+erros,ci.l = medias+erros,
         ylim = c(0,10),
         main = "Crescimento médio das planas")
