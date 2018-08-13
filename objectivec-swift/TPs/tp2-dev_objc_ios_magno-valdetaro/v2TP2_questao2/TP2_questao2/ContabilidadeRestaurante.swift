//
//  ContabilidadeRestaurante.swift
//  TP2_questao2
//
//  Created by Magno Valdetaro on 4/30/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

extension Double {
    func format(f: String) -> String {
        return String(format: "%\(f)f", self)
    }
}

struct ContabilidadeRestaurante:ContadorRestaurante {
    
    var totalPratosNormais: Int?
    var totalPratosExecutivos: Int?
    var totalValorDeVenda: Double = 0.00
    var totalValorDeCusto: Double = 0.00
    
    mutating func calcularEImprimirGastos(cozinha:Cozinha) -> String {
        
        totalPratosNormais = cozinha.listaPratosNormais.count
        totalPratosExecutivos = cozinha.listaPratosExecutivos.count
        
        if cozinha.qtdPratosNormaisVendidos > 0 {
            for i in 0 ..< cozinha.qtdPratosNormaisVendidos {
                totalValorDeCusto = totalValorDeCusto + cozinha.pnv[i].valorDeCusto!
            }
            
            for i in 0 ..< cozinha.qtdPratosNormaisVendidos {
                totalValorDeVenda = totalValorDeVenda + cozinha.pnv[i].valorDeVenda!
            }
        }
        
        if cozinha.qtdPratosExecutivosVendidos > 0 {
            for i in 0 ..< cozinha.qtdPratosExecutivosVendidos {
                totalValorDeCusto = totalValorDeCusto + cozinha.pev[i].valorDeCusto!
            }
            
            for i in 0 ..< cozinha.qtdPratosExecutivosVendidos {
                totalValorDeVenda = totalValorDeVenda + cozinha.pev[i].valorDeVenda!
            }
        }
        
        if totalValorDeVenda > totalValorDeCusto {
            let total = totalValorDeVenda - totalValorDeCusto
           print("Lucro de R$ \(total.format(".2"))")
        } else if totalValorDeVenda < totalValorDeCusto {
            let total = totalValorDeVenda - totalValorDeCusto
            print("Prejuízo de R$ \(total.format(".2"))")
        } else {
            print("Não houve lucro nem prejuízo")
        }
        
        
        let totalPratosRestantes = totalPratosNormais! + totalPratosExecutivos!
        
        return "Restam \(totalPratosExecutivos!) pratos executivos e \(totalPratosNormais!) pratos normais. \nTotal de pratos restantes: \(totalPratosRestantes)"
    }
}


