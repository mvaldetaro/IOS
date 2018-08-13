//
//  main.swift
//  assessment_q3
//
//  Created by Magno Valdetaro on 6/5/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

class Pessoa {
    var nome:String?
    var idade:Int?
}

class Funcionario:Pessoa {
    var numeroCracha:String?
}

class Professor:Funcionario {
    var materia:String?
}

