algoritmo "primeiros_50_pares"
// Fun��o : Calcula e escreve a soma dos 50 primeiros pares
// Autor :
// Data : 06/02/2016
// Se��o de Declara��es 
var
 num : inteiro
 contador : inteiro
 soma : inteiro
inicio
// Se��o de Comandos 
   num <- 2
   contador <- 1
   soma <- 2
   enquanto num <= 100 faca
     escreval(contador, " - N�mero par: ", num, " Soma: ", soma)
     //escreval(soma)
     num <- num + 2
     contador <- contador + 1
     soma <- soma + num
   fimenquanto
fimalgoritmo
