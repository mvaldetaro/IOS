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
    
    var listaPratosNormais = [
        [
            "id":"01",
            "Prato":"Cachorro quente de forno",
            "Preco":16.00,
            "Custo":10.00
        ],
        [
            "id":"02",
            "Prato":"Espagute alho e óleo",
            "Preco":16.00,
            "Custo":12.00
        ],
        [
            "id":"03",
            "Prato":"Ovos mexidos",
            "Preco":16.00,
            "Custo":10.00
        ],
        [
            "id":"04",
            "Prato":"Frango frito",
            "Preco":16.00,
            "Custo":8.00
        ],
        [
            "id":"05",
            "Prato":"Fritada de Batata",
            "Preco":16.00,
            "Custo":7.00
        ],
        [
            "id":"01",
            "Prato":"Torta de Frango",
            "Preco":16.00,
            "Custo":10.00
        ],
        [
            "id":"01",
            "Prato":"Pizza",
            "Preco":16.00,
            "Custo":10.00
        ],
        [
            "id":"01",
            "Prato":"Bombocado Salgado",
            "Preco":16.00,
            "Custo":10.00
        ],
        [
            "id":"01",
            "Prato":"Bife Completo",
            "Preco":16.00,
            "Custo":10.00
        ],
        [
            "id":"01",
            "Prato":"Frango Recheado",
            "Preco":16.00,
            "Custo":10.00
        ],
        [
            "id":"01",
            "Prato":"Pastelão de Calabresa",
            "Preco":16.00,
            "Custo":10.00
        ],
        [
            "id":"01",
            "Prato":"Empada",
            "Preco":16.00,
            "Custo":10.00
        ],
        [
            "id":"01",
            "Prato":"Nhoque",
            "Preco":16.00,
            "Custo":10.00
        ],
        [
            "id":"01",
            "Prato":"Canja de Galinha",
            "Preco":16.00,
            "Custo":10.00
        ],
        [
            "id":"01",
            "Prato":"Omelete Esperto",
            "Preco":16.00,
            "Custo":10.00
        ],
        [
            "id":"01",
            "Prato":"Bife, arroz e batata frita",
            "Preco":16.00,
            "Custo":10.00
        ]
    ]
    
    //14 pratos
    var listaPratosExecutivos = [
            [
                "id":"01",
                "Prato": "Peixe Salteado",
                "Preco":16.00,
                "Custo":10.00
            ],
            
            [
                "id":"01",
                "Prato": "Espaguete ao molho de carne e vegetais",
                "Preco":16.00,
                "Custo":10.00
            ],
            [
                "id":"01",
                "Prato": "Filé Gratinado com Batatas",
                "Preco":16.00,
                "Custo":10.00
            ],
            [
                "id":"01",
                "Prato": "Escalopi Alberto Nemer",
                "Preco":16.00,
                "Custo":10.00
            ],
            [
                "id":"01",
                "Prato": "Salmão Grelhado com Arroz integral",
                "Preco":16.00,
                "Custo":10.00
            ],
            [
                "id":"01",
                "Prato": "Salmão Toscano Salsare",
                "Preco":16.00,
                "Custo":10.00
            ],
            [
                "id":"01",
                "Prato": "Filé migno com legumes",
                "Preco":16.00,
                "Custo":10.00
            ],
            [
                "id":"01",
                "Prato": "Costela Bovina ao forno",
                "Preco":16.00,
                "Custo":10.00
            ],
            [
                "id":"01",
                "Prato": "Slamão Marinado com saquê",
                "Preco":16.00,
                "Custo":10.00
            ],
            [
                "id":"01",
                "Prato": "Fraldinha Grelhada com grão de bico e cebola",
                "Preco":16.00,
                "Custo":10.00
            ],
            [
                "id":"01",
                "Prato": "Virado à Paulista",
                "Preco":16.00,
                "Custo":10.00
            ],
            [
                "id":"01",
                "Prato": "Moqueca de peixe e camarão",
                "Preco":16.00,
                "Custo":10.00
            ],
            [
                "id":"01",
                "Prato": "Galeto",
                "Preco":16.00,
                "Custo":10.00
            ],
            [
                "id":"01",
                "Prato": "Creme de batata trufado com gema de ovo e gorogonzola",
                "Preco":16.00,
                "Custo":10.00
            ]
        ]

    var qtdPratosNormaisVendidos = 0
    var qtdPratosExecutivosVendidos = 0
    
    func socilitarPrato(tipoPrato:tipoRefeicao) -> String {
        
        let prato = Prato()
        
        switch tipoPrato {
        case .Normal:
            
            prato.codigoDoProduto = listaPratosNormais[0]["id"]! as? Int
            prato.opcaoDePrato = listaPratosNormais[0]["Prato"]! as? String
            prato.valorDeCusto = listaPratosNormais[0]["Custo"]! as? Double
            prato.valorDeVenda = listaPratosNormais[0]["Preco"]! as? Double
            
            listaPratosNormais.removeAtIndex(0)
            qtdPratosNormaisVendidos = qtdPratosNormaisVendidos + 1
            
        case .Executivo:
            
            prato.codigoDoProduto = listaPratosExecutivos[0]["id"]! as? Int
            prato.opcaoDePrato = listaPratosExecutivos[0]["Prato"]! as? String
            prato.valorDeCusto = listaPratosExecutivos[0]["Custo"]! as? Double
            prato.valorDeVenda = listaPratosExecutivos[0]["Preco"]! as? Double
            
            listaPratosExecutivos.removeAtIndex(0)
            qtdPratosExecutivosVendidos = qtdPratosExecutivosVendidos + 1
            
        }
        
        return "\(prato.opcaoDePrato)"
    }
}
