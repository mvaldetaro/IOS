//
//  main.swift
//  TP3
//
//  Created by Magno Valdetaro on 5/21/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

print("----------------------------------------------------\nLOJA DE SOUVENIERS\n----------------------------------------------------")

var vendedor = Vendedor()
var gerente = Gerente()
var produto = Loja()
var receberCliente = true
var menuVenda = true

while(receberCliente) {
    
    print("Por favor, qual o seu nome?")
    let inputNome = readLine(stripNewline: true)

    print("E o seu sobrenome?")
    let inputSobrenome = readLine(stripNewline: true)
    
    print("Você quer ser atendido por um gerente ou vendedor?")
    print("Digite 1 para Vendedor e 2 para Gerente")
    let inputFuncionario = readLine(stripNewline: true)
    
    switch(inputFuncionario!){
        case "1":
            do {
                try vendedor.boasVindas(inputNome!, inputSobrenome)
                receberCliente = false
            } catch ErrosMenu.EntradaInvalida {
                print("Você não me disse seu nome.")
            }
        case "2":
            do {
                try gerente.boasVindas(inputNome!, inputSobrenome)
                receberCliente = false
            } catch ErrosMenu.EntradaInvalida {
                print("Você não me disse seu nome.")
            }
        
        default:
            print("Digite o valor válido.")
    }
}

while(menuVenda){
    print("Escolha um número:")
    print("[1 - \(TipoProduto.Chaveiro.rawValue)] [2 - \(TipoProduto.Estatua.rawValue)] [3 - \(TipoProduto.Ima.rawValue)] [4 - Sair]")
    
    var itemSelecionado = readLine()
    
    switch(itemSelecionado!){
        case "1":
            Vendedor().vender(produto, TipoProduto.Chaveiro)
        case "2":
            Vendedor().vender(produto, TipoProduto.Estatua)
        case "3":
            Vendedor().vender(produto, TipoProduto.Ima)
        case "4":
            Vendedor.getTotalVendas(produto)
            menuVenda = false
        default:
            print("**** NÚMERO INVÁLIDO ****")
    }
    
}



