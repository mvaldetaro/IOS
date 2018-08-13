algoritmo "semnome"
// Função :
// Autor :
// Data : 27/10/2015
// Seção de Declarações 
//Ler 80 números e ao final informar quantos número(s) est(á)ão
//no intervalo entre 10 (inclusive) e 150 (inclusive).
var
i,numero,totalNumeros : inteiro
inicio
     para i de 1 ate 4 faca
          escreval("escreva o numero")
          leia(numero)
          se (numero>=10) e (numero<=150) entao
             totalNumeros <- totalNumeros + 1
          fimse
     fimpara
     escreval(totalNumeros)
fimalgoritmo
