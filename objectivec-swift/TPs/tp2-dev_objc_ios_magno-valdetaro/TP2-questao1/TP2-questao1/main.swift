//
//  main.swift
//  TP2-questao1
//
//  Created by Magno Valdetaro on 4/24/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

func printName(str0:String = "", str1:String = "" ) {
    var strParts: [String] = []
    
    if str0 != "" {
        strParts += [str0]
    }
    
    if str1 != "" {
        strParts += [str1]
    }
    
    //print(strParts.count)
    
    if strParts.count > 0 {
        print(strParts.joinWithSeparator(" "))
    } else {
        print("Nenhum")
    }
}

// 0 parametro

printName()

// 1 parametro

printName("Magno")

// 2 parametros

printName("Magno", str1: "Valdetaro")