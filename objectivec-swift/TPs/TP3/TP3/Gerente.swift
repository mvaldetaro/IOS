//
//  Gerente.swift
//  TP3
//
//  Created by Magno Valdetaro on 5/21/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

class Gerente: Vendedor {
    override func boasVindas<T>(nome : String, _ sobrenome : T) throws {
        if (nome == "") {
            throw ErrosMenu.EntradaInvalida
        } else {
            print("Seja bem vindo a nossa Loja \(nome) \(sobrenome), eu sou o gerente, qual dos produtos o senhor gostaria de comprar.")
        }
    }
    
    
}
