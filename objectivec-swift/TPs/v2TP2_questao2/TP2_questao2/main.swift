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


// Guarda um copia do pratos normais
pedido.pnv = pedido.listaPratosNormais;
pedido.pev = pedido.listaPratosExecutivos;

print("===============================================")
print("PEDIDOS")
print("===============================================")

for i in 0 ... 2 {
    print("Pedido: \(pedido.socilitarPrato(tipoRefeicao.Normal))" )
}

for i in 0 ... 5 {
    print("Pedido: \(pedido.socilitarPrato(tipoRefeicao.Executivo))")
}

print("-----------------------------------------------")

print(contabilidade.calcularEImprimirGastos(pedido))


