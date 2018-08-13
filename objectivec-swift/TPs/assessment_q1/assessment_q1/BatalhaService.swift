//
//  BatalhaService.swift
//  assessment_q1
//
//  Created by Magno Valdetaro on 6/4/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

class BatalhaService {
    static func iniciarBatalha<T,U>(inout personagem1:T, inout _ personagem2:U){
        
        if personagem1 is Personagem && personagem2 is Personagem {
            var char1 = personagem1 as! Personagem
            var char2 = personagem2 as! Personagem
            
            //Inicia a Batalha
            
            var batalha = true
            
            while(batalha) {
               char1.atacar(char2)
               char2.atacar(char1)
                
                if char1.pontosDeVida <= 0 || char2.pontosDeVida <= 0 {
                    batalha = false
                }
            }
            
            personagem1 = char1 as! T
            personagem2 = char2 as! U
            
            print("FIM DA BATALHA!!!")
        
        } else {
            print("A batalha não pode ser iniciada, não há personagens presentes")
        }
    }
}