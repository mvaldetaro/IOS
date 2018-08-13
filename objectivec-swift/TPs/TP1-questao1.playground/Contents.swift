//: Desenvolvimento Objective C para Apple iOS - Teste de Performance 1

import UIKit

// Questao 1


func somaInteiros(var start: Int = 0, var temp: Int = 0, let end: Int = 100) -> Int {
    var resultado = 0
    
    for var i = 0; i < end; ++i {
        start = start + 1
        temp = temp + start
        print("\(temp)")
    }
    
    resultado = temp
    return resultado

}


// Executa com valores padroes
somaInteiros()

// Imprimindo no console o resuldado da soma dos inteiros de 1 a 100
print(somaInteiros(0, temp:0, end:100))




