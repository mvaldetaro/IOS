//
//  BatalhaService.swift
//  assessment_q1
//
//  Created by Magno Valdetaro on 6/4/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

class BatalhaService {
    static func iniciarBatalha<T:Personagem,U:Personagem>(inout personagem1:T, inout _ personagem2:U){
            
            //Inicia a Batalha
            
            var batalha = true
            
            while(batalha) {
               personagem1.atacar(personagem2)
               personagem2.atacar(personagem1)
                
                if personagem1.pontosDeVida <= 0 || personagem2.pontosDeVida <= 0 {
                    batalha = false
                }
            }
            
            //personagem1 = char1 as! T
            //personagem2 = char2 as! U
            
            print("FIM DA BATALHA!!!")
    }
}