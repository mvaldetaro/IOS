//
//  ContabilidadeRestaurante.swift
//  TP2_questao2
//
//  Created by Magno Valdetaro on 4/30/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

struct ContabilidadeRestaurante : ContadorRestaurante  {
    
    func calcularEImprimirGastos(saidas:Cozinha) -> String {
        
        let totalPratosNormais = saidas.listaPratosNormais.count
        let totalPratosExecutivos = saidas.listaPratosExecutivos.count
        
        let totalPratosRestantes = totalPratosNormais + totalPratosExecutivos
        
        return "Restam \(totalPratosExecutivos) pratos executivos e \(totalPratosNormais) pratos normais. \nTotal de pratos restantes: \(totalPratosRestantes)"
    }
}


