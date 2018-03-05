#Aula 09 - Analisando dados do Facebook no R

library(readr)
facebookData <- read_delim("facebookData.csv", 
                           ";", escape_double = FALSE, trim_ws = TRUE)

dados<-read.csv("facebookData.csv", h=T)

attach(facebookData)

View(facebookData)



head(facebookData)

library("rJava")
library("qdap")

plot(shares.count~id)

text(id, shares.count, labels = id, cex = 1, pos = 3)
