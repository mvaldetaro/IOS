algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 11/2/2015
// Se��o de Declara��es 
var
i, numero : inteiro
pares, impares : vetor [1..10] de inteiro
inicio
para i de 1 ate 10 faca
escreval("Escreva um n�mero")
leia(numero)
se numero mod 2 = 0 entao
     pares[i] <- numero
senao
     impares[i] <- numero
fimse
fimpara

escreval("N�meros Pares")
para i de 1 ate 10 faca
     escreval(pares[i])
fimpara

escreval("N�meros �mpares")
para i de 1 ate 10 faca
     escreval(impares[i])
fimpara
fimalgoritmo
