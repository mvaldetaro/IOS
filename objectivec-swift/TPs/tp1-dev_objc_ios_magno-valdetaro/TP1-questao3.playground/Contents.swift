//: Playground - noun: a place where people can play

import UIKit

// Questao 3

var i : Int = 0
var x : Int = 0
var temp : Int = 0
var qtdRep : Int = 0
var rep : Bool = false
var intVetor : Array = [5,4,2,10,25,79,105,97,5,25]
var novoVetor: [Int] = []

print(intVetor)

let intVetorLenght : Int =  intVetor.count


// Verificando se ha repetidos

for i = 0; i < intVetorLenght; ++i {
    
    for x = i+1; x < intVetorLenght; ++x {
        
        if intVetor[i] == intVetor[x] {
            ++qtdRep
            rep = true
            
        }
    }
    
    if !rep {
        novoVetor.append(intVetor[i])
    }
    
    rep = false
    
}

// Ordenando

for i = 0; i < 10; ++i {
    
    for x = 0; x < novoVetor.count-1; ++x {
        
        if novoVetor[x] > novoVetor[x+1] {
            temp = novoVetor[x]
            novoVetor[x] = novoVetor[x+1]
            novoVetor[x+1] = temp
            
        }
        
    }
}




// Resultado sem elemntos repetidos e em ordem crescente
print(novoVetor)


