//
//  Personagem.swift
//  assessment_q1
//
//  Created by Magno Valdetaro on 6/4/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

protocol Personagem {
    var nome:String {get set}
    var forca:Int {get set}
    var inteligencia:Int {get set}
    var destreza:Int {get set}
    var pontosDeVida: Int {get set}
    var pontosDeMagia: Int {get set}
    
    func andar()
    func parar()
    func atacar(personagem:Personagem)
    
}

