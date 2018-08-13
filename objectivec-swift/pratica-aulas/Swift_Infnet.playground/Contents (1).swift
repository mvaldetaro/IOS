//: Playground - noun: a place where people can play

import UIKit

// var = variavel

var str = "Hello, playground"

// let = constante

let hello = "Olá playground"

var minhaVariavel = 42

minhaVariavel = 50

let minhaConstante = 42

let valorDeUmInteiro = 60
let valorDeUmDouble = 60.0

//tipos explicitos

let valorExplicitoDouble : Double = 60

let variavel : Float = 4

//convertendo variaveis

let label = "A idade de João é "
let idade = 19
let idadeJoaoLabel = label + String(idade) + "anos"

// convertendo variaveis de modod somplificado

let livros = 9
let revistas = 15
let fraseUm = "Tenho \(livros) livros na estante."
let fraseDois =  "Tenho \(livros +  revistas) revistas e livros na estante."

// Vetores

var diasDaSemana = ["Segunda", "Terça", "Quarta", "Quinta", "Sexta"]

diasDaSemana[3] = "Sábado"
diasDaSemana[4] = "Domingo"


//Dicionarios

var tecnologias = [
    "iOS" : "Swift",
    "Windows 10" : "C#",
    "Android" : "Java"
]

tecnologias["Firefox OS"] = "HTML 5"

// dicionário ou vetor vazio

let vectorVazio = [String]()
let dicionarioVazio = [String : String]()

// controle de fluxo for e if

let notasIndividuais = [75, 43, 103, 87, 12]

var notaTime = 0

for nota in notasIndividuais {
    if nota > 50 {
        notaTime += 3
    } else {
        notaTime += 1
    }
}
print(notaTime)

// let e if juntos para valores que podem ser nulos
// Note que é usado um (?) após o tipo da variável. Isso indica que a variável pode ser nula ou do tipo String

var nomeOpcional : String? = "Magno"
var saudacao = "Olá!"
if let nome = nomeOpcional {
    saudacao = "Olá, \(nome)"
}


// Trabalhar com valores opcionais é prover um valor padrão utilizando o operador ??

let apelido: String? = nil
let nomeCompleto: String = "Magno Valdetaro"
let saudacaoInformal = "Olá \(apelido ?? nomeCompleto)"

// Switch

let comida = "pizza"
switch comida {
    case "pizza":
        print("Eu estou de dieta")
    case "vegetal", "salada" :
        print("Isso eu posso comer")
    case let x where x.hasSuffix("queijo"):
        print("Esse \(x) é muito gorduroso?")
    default:
        print("Vou acabar comendo esse prato")
}

// for in

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]

var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

print(largest)

// while

var ano = 2010

while ano < 2020 {
 ano++
}

print(ano)

var contagem = 10
repeat {
    contagem--
} while contagem > 0

print(contagem)

//No for é possível escrever de duas maneiras o index, usando ..< ou escrevendo de forma explícita sua inicialização, condição e incrementação.


// primeira opcao
var primeiroLoop = 0
for i in 0..<10 {
    primeiroLoop++
}
print(primeiroLoop)

// segunda opcao (forma explicita)

var segundoLoop = 0
for var i = 0; i<10; ++i {
    segundoLoop++
}
print(segundoLoop)

// incluindo o 10 valor (forma explicita)

var terceiroLoop = 0
for var i = 0; i<=10; ++i {
    terceiroLoop++
}
print(terceiroLoop)

// incluindo o 10 valor

var quartoLoop = 0
for i in 0...10 {
    quartoLoop++
}
print(quartoLoop)



