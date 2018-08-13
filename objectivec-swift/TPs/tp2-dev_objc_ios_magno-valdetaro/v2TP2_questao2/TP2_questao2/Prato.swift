//
//  Prato.swift
//  TP2_questao2
//
//  Created by Magno Valdetaro on 4/24/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

class Prato: Produto {
    
    var opcaoDePrato : String?
    var valorDeVenda : Double?
    
    init (opcaoDePrato : String, valorDeVenda : Double, valorDeCusto: Double, codigoDoProduto: Int) {
        self.opcaoDePrato = opcaoDePrato
        self.valorDeVenda = valorDeVenda
        super.init(valorDeCusto: valorDeCusto, codigoDoProduto: codigoDoProduto)
    }
    
}


