algoritmo "semnome"
// Função :
// Autor :
// Data : 11/2/2015
// Seção de Declarações 
var
i, numero : inteiro
pares, impares : vetor [1..10] de inteiro
inicio
para i de 1 ate 10 faca
escreval("Escreva um número")
leia(numero)
se numero mod 2 = 0 entao
     pares[i] <- numero
senao
     impares[i] <- numero
fimse
fimpara

escreval("Números Pares")
para i de 1 ate 10 faca
     escreval(pares[i])
fimpara

escreval("Números Ímpares")
para i de 1 ate 10 faca
     escreval(impares[i])
fimpara
fimalgoritmo
