#Aula 08 - Funções, operadores lógicos, estruturas condicionais e estruturas de repetição

hello.world<-function()print("Alo...")

hello.world()

media<-function(x){
  output<-sum(x)/length(x)
  return(output)
}

dados<-c(5,6,8,9,2,4,7)

media(dados)

multiplica<-function(x,y){
  x*y
}

a<-c(8,4)
b<-c(8,5)

multiplica(a,b)

formula<-function(a,b,c){
  result <- a*b+c
  print(result)
}

formula(5,4,6)

#Aula 08 - Funções, operadores lógicos, estruturas condicionais e estruturas de repetição - Parte 2

condicao<-function(x){
  if(x==1){
    cat("O Número é igual a 1")
  }else{
    cat("O Número é diferente de 1")
  }
}

condicao(1)
condicao(3)

multicondicao<-function(x){
  if(x==1){
    cat("O Número é igual a 1")
  }else if(x==2){
    cat("O Número é igual a 2")
  }else {
    cat("O Número não é 1 e não é 2")
  }
}

multicondicao(4)
multicondicao(2)

whilecondicao<-function(x){
  while(x<=10) {
    print(x)
    x=x+1
  }
}

whilecondicao(2)
