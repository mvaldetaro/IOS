algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 27/10/2015
// Se��o de Declara��es 
//Ler 80 n�meros e ao final informar quantos n�mero(s) est(�)�o
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
