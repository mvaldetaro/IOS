algoritmo "primeiros_50_pares"
// Função : Calcula e escreve a soma dos
// 50 primeiros pares
// Autor : Magno Valdetaro
// Data : 06/02/2016
// Seção de Declarações
var
 contador, num, soma : inteiro
inicio
// Seção de Comandos
   num <- 2
   soma <- num
   enquanto contador < 50 faca
     escreval(soma)
     contador <- contador + 1
     num <- num + 2
     soma <- soma + num
   fimenquanto
fimalgoritmo

