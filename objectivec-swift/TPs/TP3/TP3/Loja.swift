//
//  Loja.swift
//  TP3
//
//  Created by Magno Valdetaro on 5/21/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

class Loja {
    
    var estoqueChaveiros:[Produto] = []
    var estoqueEstatuas:[Produto] = []
    var estoqueImas:[Produto] = []
    
    var qtdChaveiros:Int = 0
    var qtdEstatuas:Int = 0
    var qtdImas:Int = 0
    
    
    init() {
        // inicia com 30 produtos do tipo Chaveiro
        for index in 0...29 {
            let itemChaveiro = Produto(codigo: index+1, tipo: TipoProduto.Chaveiro, valor: 12)
            estoqueChaveiros.insert(itemChaveiro, atIndex: index)
        }
        
        // inicia com 15 produtos do tipo Estatua
        for index in 0...14 {
            let itemEstatua = Produto(codigo: index+1, tipo: TipoProduto.Estatua, valor: 23)
            estoqueEstatuas.insert(itemEstatua, atIndex: index)
        }
        
        // inicia com 22 produtos do tipo Imã
        for index in 0...21 {
            let itemIma = Produto(codigo: index+1, tipo: TipoProduto.Ima, valor: 6)
            estoqueImas.insert(itemIma, atIndex: index)
        }
        
    }
}

extension Double {
    var real: String {
        let n:Double = self
        let new:String = String(format: "R$%.2f", n)
        return new
    }
}

enum ErrosMenu : ErrorType {
    case EntradaInvalida
}