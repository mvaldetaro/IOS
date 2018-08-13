//
//  Mago.swift
//  assessment_q1
//
//  Created by Magno Valdetaro on 6/4/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

class Mago:Personagem {
    
    var nome:String
    var forca:Int
    var inteligencia:Int
    var destreza:Int
    var pontosDeVida: Int
    var pontosDeMagia: Int
    let magias = [
        "RaioDeFogo": 15,
        "MarcaArcana": 20,
        "RaioDeAcido": 10,
        "RaioDeGelo": 30
    ]
    
    init(_ nome:String, _ forca:Int, _ inteligencia:Int, _ destreza:Int, _ pontosDeVida: Int, _ pontosDeMagia: Int){
        self.nome = nome
        self.forca = forca
        self.inteligencia = inteligencia
        self.destreza = destreza
        self.pontosDeVida = pontosDeVida
        self.pontosDeMagia = pontosDeMagia
    }
    
    func andar() {
        print("\(self.nome) está andando")
        
    }
    
    func parar() {
        print("\(self.nome) está parado")
    }
    
    func atacar(var personagem:Personagem) {
        let dano = (10 + self.inteligencia)
        let vida = personagem.pontosDeVida
        personagem.pontosDeVida = vida - dano
        
        if personagem.pontosDeVida <= 0 {
            personagem.pontosDeVida = 0
        }
        
        print("\(self.nome) atacou \(personagem.nome)!")
        print("\(personagem.nome) recebeu \(dano) pontos de Dano")
        print("\(personagem.nome) agora tem apenas \(personagem.pontosDeVida) pontos de Vida")
        print("\n...\n")
    }
    
}