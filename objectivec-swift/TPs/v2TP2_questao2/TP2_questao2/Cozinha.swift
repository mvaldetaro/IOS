//
//  Cozinha.swift
//  TP2_questao2
//
//  Created by Magno Valdetaro on 4/24/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

class Cozinha {
    
    // 16 pratos
    var listaPratosNormais:[Prato] = []
    //14 pratos
    var listaPratosExecutivos:[Prato] = []
    
    var pnv:[Prato] = []
    var pev:[Prato] = []
    
    
    init() {
        for index in 0...15 {
            let prato = Prato(opcaoDePrato:"Prato Normal \(index)", valorDeVenda: 12.00, valorDeCusto: 8.00, codigoDoProduto: 1)
            
            listaPratosNormais.insert(prato, atIndex: index)
        }
        
        for index in 0...13 {
            let prato = Prato(opcaoDePrato:"Prato Executivo \(index)", valorDeVenda: 16.00, valorDeCusto: 10.00, codigoDoProduto: 1)
            
            listaPratosExecutivos.insert(prato, atIndex: index)
        }
    
    }
    
    var qtdPratosNormaisVendidos = 0
    var qtdPratosExecutivosVendidos = 0
    
    func socilitarPrato(tipoPrato:tipoRefeicao) -> String {
        
        var pratoSolicitado: String?
        
        switch tipoPrato {
        case .Normal:
            pratoSolicitado = listaPratosNormais[0].opcaoDePrato! as String
            listaPratosNormais.removeAtIndex(0)
            qtdPratosNormaisVendidos = qtdPratosNormaisVendidos + 1
            
        case .Executivo:
            pratoSolicitado = listaPratosExecutivos[0].opcaoDePrato! as String
            listaPratosExecutivos.removeAtIndex(0)
            qtdPratosExecutivosVendidos = qtdPratosExecutivosVendidos + 1
            
        }
        
        return "\(pratoSolicitado!)"
    }
}
