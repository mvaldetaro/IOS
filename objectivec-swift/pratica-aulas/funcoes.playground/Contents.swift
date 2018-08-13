//: Playground - noun: a place where people can play

import UIKit

//  func nomeDaFuncao(parametros)
//                   (parametro:tipo) -> tipo de retorno

func sayHello(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}

sayHello("Nabil", day: "Wednesday")

// parametros nomeados

func funcaoAleatoria(nomeExternoParametro nomeInternoParametro: Int) {
 
}

funcaoAleatoria(nomeExternoParametro: 10)

//parametros com valor padrao

var nomeCompleto = "João Vitor"

func digaOla(apelido: String = ""){
    if(apelido != "") {
        print("Olá " + apelido)
    } else {
        print("Olá " + nomeCompleto)
    }
}

digaOla()
digaOla("Joãozinho")