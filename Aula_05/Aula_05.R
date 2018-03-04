#Aula 05 - Matrizes e quadro de dados (Dataframes)

# Na matriz podem ser inserirdos números ou caracteres, não ambos.
# No dataframe (Quadro de dados) podem ser números, caracteres e ambos

x<- 1:5
y<- 6:10
z<- 11:15

cbind(x,y,z)

# Cbind cria uma matriz onde x, y e z são colunas

rbind(x,y,z)

# Rbind cria uma matriz onde x, y e z são linhas

# Criando um dataframe

dados<-data.frame("Notas"=c(7,2,6,4,9,10,8,7),
                  "Nome"=c("João","Maria","Pedro","José","ALice","Verônica","Vinícios","Cleber"),
                  "Sexo"=c("M","F","M","M","F","F","M","M"))
dados

#Exibe as 6 primeiras linhas
head(dados)

#Exibe as 6 úlimas linhas
tail(dados)

View(dados)

dim(dados)

row.names(dados)

colnames(dados)

summary(dados)
