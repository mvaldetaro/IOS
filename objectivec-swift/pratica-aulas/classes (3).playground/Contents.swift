//: Playground - noun: a place where people can play

import UIKit

// Classes

class Personagem {
    // Propriedades
    var nome: String?
    var raca: String?
    
    init (nome: String, raca: String) {
        self.nome = nome;
        self.raca = raca;
    }
}

// se você retirar os pontos de interrogação dos tipos String de cada propriedade, terá um erro porque as propriedades não podem ser nulas
// String? , significando que são nullable e não precisam de um valor inicial.

// Instanciando classes

let guerreiro = Personagem()

guerreiro.nome = "Looder"
guerreiro.raca = "Humano"




