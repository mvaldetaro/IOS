//
//  Vendedores.swift
//  TP3
//
//  Created by Magno Valdetaro on 5/21/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

class Vendedor:Funcionario {
    
    var vlrTotalVendas:Double = 0
    
    //var qtdRestantes:Int = 0
    
    func vender(produto:Loja, _ tipo:TipoProduto) {
        
        switch tipo {
        case .Chaveiro:
            produto.qtdChaveiros =  produto.qtdChaveiros + 1
            vlrTotalVendas =  produto.estoqueChaveiros[0].valor
            produto.estoqueChaveiros.removeAtIndex(0)
        case .Estatua:
            produto.qtdEstatuas = produto.qtdEstatuas + 1
            vlrTotalVendas = produto.estoqueEstatuas[0].valor
            produto.estoqueEstatuas.removeAtIndex(0)
            
            
        case .Ima:
            produto.qtdImas = produto.qtdImas + 1
            vlrTotalVendas = produto.estoqueImas[0].valor
            produto.estoqueImas.removeAtIndex(0)
            
        }
        
        print("Obrigado pela compra de um \(tipo.rawValue) por \(vlrTotalVendas.real)")
    }
    
    static func getTotalVendas(produto:Loja){
        
        var qtdTotalVendas:Int = 0

        
        qtdTotalVendas = produto.qtdChaveiros + produto.qtdEstatuas + produto.qtdImas
    
        if qtdTotalVendas == 0 {
            print("Nenhum produto vendido")
        } else if qtdTotalVendas == 1 {
            print("Quantidade de total de vendas: \(qtdTotalVendas) produto")
        } else {
            print("Quantidade de total de vendas: \(qtdTotalVendas) produtos")
        }
        
    }
}


