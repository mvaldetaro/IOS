//
//  Produto.swift
//  TP3
//
//  Created by Magno Valdetaro on 5/21/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

class Produto {
    let codigo:Int
    var tipo:TipoProduto
    var valor:Double
    
    init(codigo:Int, tipo:TipoProduto, valor:Double){
        self.codigo = codigo
        self.tipo = tipo
        self.valor = valor
    }
}
