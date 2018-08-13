algoritmo "primeiros_50_pares"
// Função : Calcula e escreve a soma dos 50 primeiros pares
// Autor : Magno Valdetaro
// Data : 06/02/2016
// Seção de Declarações 
var
 i, num, soma : inteiro
inicio
// Seção de Comandos 
   num <- 2
   soma <- 2
   para i de 1 ate 50 faca
     escreval(soma)
     num <- num + 2
     soma <- soma + num
   fimpara
fimalgoritmo
