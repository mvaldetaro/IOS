//
//  Personagem.swift
//  classSwift
//
//  Created by Magno Valdetaro on 4/24/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import UIKit

class Personagem {

    var nome : String?
    var raca: String?
    var forca: Int?
    var destreza: Int?
    var inteligencia: Int?
    
    
    // construtor
    
    /*init(nome:String, raca:String) {
        self.nome = nome
        self.raca = raca
    }
    
    init(forca: Int?, destreza: Int?, inteligencia: Int?){
        self.forca = forca
        self.destreza = destreza
        self.inteligencia = inteligencia
    }*/
    
    func atacar(var dano: Double){
        print("Ataque com \(dano)+\(forca)")
    }
    
}

class Guerreiro: Personagem {
    func gritoDeGuerra(){
        print("RARRR!")
    }
    
    //sobreescrevendo metodo
    override func atacar(var dano: Double){
        dano += 120
        print("Ataque com \(dano)+\(forca)")
    }
    
}

class Person {
    var firstName: String?
    var lastName: String?
    let gender = "female"

    func fullName() -> String {
        var parts: [String] = []
        
        if let firstName = self.firstName {
            parts += [firstName]
        }
        
        if let firstName = self.lastName {
            parts += [firstName]
        }
        
        return parts.joinWithSeparator(" ")
        
    }
    
    

}


