//: Playground - noun: a place where people can play

import UIKit

//Questão 1


let personagens:[String?] = ["Mario", "Luigi", "Toad", "Peach", "Bowser", nil]

personagens[5]

func opcionais(vetor: NSArray) {
    for personagem in vetor {
            print(personagem)
    }
}

//opcionais(personagens)

// ## Questão 2 ##

func verificaDivisao(n1: Int, _ n2: Int) -> Bool? {
    let resultado:Bool?
    if (n1 % n2) == 0 {
        resultado = true
        print("Divisível")
    } else {
        resultado = nil
        print("Não é divisível")
    }
    
    return resultado
}

verificaDivisao(5, 3)

verificaDivisao(10, 10)



// ## Questão 3 ##

var q3 = ["Nome", 26, true]



// ## Questão 4 ##

let pessoa = [
    "nome" : "Magno",
    "sobrenome" : "Valdetaro",
    "altura" : 1.98,
    "idade" : 31,
]


if pessoa["nome"] is String {
    print(pessoa["nome"] as! String)
}

if pessoa["sobrenome"] is String {
    print(pessoa["sobrenome"] as! String)
}

print(pessoa["altura"] as! Double)

print(pessoa["idade"] as! Int)



// ## Questão 5 ##

let bingo: Set = [3, 12, 15, 21, 32, 38, 45, 46, 50, 51, 58, 63, 69, 71, 80]
let loto: Set = [2, 3, 15, 21, 30, 38, 45, 46, 51, 58, 63, 71, 80, 94, 100]

bingo.count
loto.count

bingo.intersect(loto)

bingo.union(loto)

bingo.subtract(loto)
loto.subtract(bingo)



// ## Questão 6 ##

let numeros: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let numerosPrimos: Set = [1, 3, 5, 7]

numerosPrimos.isSubsetOf(numeros)



// ## Questão 7 ##

var dicionario = [
    "book" : "livro",
    "game" : "jogo",
    "technology" : "tecnologia"
]

dicionario["computer"] = "computador"

print(dicionario)

var item = dicionario["book"]! as String



// ## Questão 8 ##

class Jogador {
    var pontosDeVida: Int
    var username: String
    
    init (_ pontosDeVida: Int, _ username: String) {
        self.pontosDeVida = pontosDeVida
        self.username = username
    }
}

var jogadores = Array(count: 5, repeatedValue: Jogador(200, "RogueTHX"))

jogadores.removeLast()

jogadores





