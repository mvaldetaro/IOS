algoritmo "primeiros_50_pares"
// Fun��o : Calcula e escreve a soma dos
// 50 primeiros pares
// Autor : Magno Valdetaro
// Data : 06/02/2016
// Se��o de Declara��es
var
 contador, num, soma : inteiro
inicio
// Se��o de Comandos
   num <- 2
   soma <- num
   enquanto contador < 50 faca
     escreval(soma)
     contador <- contador + 1
     num <- num + 2
     soma <- soma + num
   fimenquanto
fimalgoritmo

