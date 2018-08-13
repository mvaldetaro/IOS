//
//  Funcionario.swift
//  TP3
//
//  Created by Magno Valdetaro on 5/21/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

class Funcionario {
    func boasVindas<T>(nome : String, _ sobrenome : T) throws {
        
        if (nome == "") {
            throw ErrosMenu.EntradaInvalida
        } else {
            print("Seja bem vindo a nossa loja, \(nome) \(sobrenome)! Este são os itens a venda.")
        }
    }
}
