//
//  main.swift
//  TP2_questao2
//
//  Created by Magno Valdetaro on 4/24/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

var pedido = Cozinha()
var contabilidade = ContabilidadeRestaurante()



// Pedidos

print("===============================================")
print("PEDIDOS")
print("===============================================")

for i in 0 ..< 2 {
    
    print("Pedido \(i+1)")
    print("Prato normal: \(pedido.socilitarPrato(tipoRefeicao.Normal))" )
    print("Prato executivo: \(pedido.socilitarPrato(tipoRefeicao.Executivo))")
    print("-----------------------------------------------")
    
    //nPrato.valorDeCusto = pedido.listaPratosNormais[0]["Custo"]! as? Double

}

print(contabilidade.calcularEImprimirGastos(pedido))


