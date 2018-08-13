//
//  main.swift
//  assessment_q1
//
//  Created by Magno Valdetaro on 6/4/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

let estudantesDeMagia:[Mago] = [
    Mago("Merlin The Mage", 10, 25, 20, 150, 300),
    Mago("Magalee Witch", 10, 25, 20, 150, 300),
    Mago("Azisifeus Citaz", 10, 25, 20, 150, 300)
]

let estudantesDaArteDaGuerra:[Guerreiro] = [
    Guerreiro("Lor't Akarum", 25, 10, 10, 300, 100),
    Guerreiro("Toru'k M'kito", 25, 10, 10, 300, 100)
]

//var batalha = BatalhaService()

print("----------------------*-----------------------")
print(" Game of the Assessment: Wizards and Warriors" )
print("----------------------*-----------------------")

var gamer = Jogador()
var receberJogador = true
var step = 0
var temp = step

while(receberJogador) {
    
    switch(step){
        case 0:
            print("\nDigite seu nome: (min: 2 letras)")
            let inputNome = readLine(stripNewline: true)
            let nomeLenght = inputNome!.characters.count as Int
            
            do {
                if nomeLenght == 0 {
                    throw ErrosGame.nomeDeveSerPreenchido
                } else if nomeLenght > 0 && nomeLenght <= 2 {
                    step = 0
                    print("Nome deve ter mais de 2 caracteres.")
                } else {
                    gamer.nome = inputNome
                    step = step+1
                    temp = step
                }
            } catch ErrosGame.nomeDeveSerPreenchido {
                print("Você não tem nome?")
                step = temp
            }
        case 1:
            print("\nDigite seu email: ")
            let inputEmail = readLine(stripNewline: true)
            let isEmail = inputEmail!.isEmail()
            
            do {
                if !isEmail {
                    throw ErrosGame.emailInvalido
                } else {
                    gamer.email = inputEmail
                    step = step+1
                    temp = step
                }
            } catch ErrosGame.emailInvalido {
                print("Email Inválido")
                step = temp
            }
        case 2:
            print("\nDigite seu telefone: (ex.: +55 (0xx) xxxxx-xxxx)")
            let inputTelefone = readLine(stripNewline: true)
            let isTelefone = inputTelefone!.isTelefone()
            
            do {
                if !isTelefone {
                    throw ErrosGame.emailInvalido
                } else {
                    gamer.email = inputTelefone
                    step = step+1
                    temp = step
                }
            } catch ErrosGame.emailInvalido {
                print("Telefone Inválido")
                step = temp
            }
        case 3:
            print("\nDigite sua data de nascimento? (xx/xx/xxxx)")
            let inputDtNascimento = readLine(stripNewline: true)
            let isDtNascimento = inputDtNascimento!.isData()
            
        
            do {
                if !isDtNascimento {
                    throw ErrosGame.dataDeNascimentoInvalida
                } else {
                    let dateFormatter = NSDateFormatter()
                    dateFormatter.dateFormat = "dd-MM-yyyy"
                    var nascimento = dateFormatter.dateFromString(inputDtNascimento!)
                    let isMaiorDeIdade = nascimento!.isMaiorDeIdade()
                    
                    if !isMaiorDeIdade {
                        throw ErrosGame.menorDeIdade
                    } else {
                        gamer.dataDeNascimento = nascimento
                        step = step+1
                        temp = step
                    }
                }
            } catch ErrosGame.dataDeNascimentoInvalida {
                print("Data de Nascimento Inválida")
                step = temp
            } catch ErrosGame.menorDeIdade {
                print("Infelizmente menores de Idade não podem participar deste jogo.")
                receberJogador = false
            }
        case 4:
            print("\nBem Vindo \(gamer.nome!)!")
            print("-+-+-+-+-+-+-+-+-+-+-+-+-+-+-")
            print("\nQue a Batalha comece!")
            
            var orc = estudantesDaArteDaGuerra[0]
            var mago = estudantesDeMagia[0]
            var mago2 = estudantesDeMagia[1]
            var mago3 = estudantesDeMagia[2]
            
            print("===============================")
            print("\(orc.nome) Vs \(mago.nome)")
            print("===============================")
            
            BatalhaService.iniciarBatalha(&orc, &mago)
            
            print("===============================")
            print("\(mago2.nome) Vs \(mago3.nome)")
            print("===============================")
            
            BatalhaService.iniciarBatalha(&mago2, &mago3)
            
            receberJogador = false
        
        default:
            step = temp
            receberJogador = true
    }
    
}


