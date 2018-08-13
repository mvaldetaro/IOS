//: Playground - noun: a place where people can play

import UIKit

// Questão 2

// Ordem Crescente

var i = 0
var x = 0
var temp = 0
var intVetor = [10, 6, 7, 125, 62, 1566, 20, 1, 50]

print(intVetor)

var c =  intVetor.count - 1

for i = 0; i < 10; ++i {
    
    for x = 0; x < c ; ++x {
        
        if intVetor[x] > intVetor[x+1] {
            temp = intVetor[x]
            intVetor[x] = intVetor[x+1]
            intVetor[x+1] = temp
        
        }
        
    }
}

// Resultado vetor em ordem crescente
print("Crescente:", intVetor)

// Ordem Decrescente

for i = 0; i < 10; ++i {
    
    for x = 0; x < c ; ++x {
        
        if intVetor[x] < intVetor[x+1] {
            temp = intVetor[x]
            intVetor[x] = intVetor[x+1]
            intVetor[x+1] = temp
            
        }
        
    }
}

// Resultado vetor em ordem crescente
print("Descrescente:", intVetor)
