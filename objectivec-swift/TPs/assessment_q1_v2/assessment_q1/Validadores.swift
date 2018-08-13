//
//  Validadores.swift
//  assessment_q1
//
//  Created by Magno Valdetaro on 6/4/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation


extension String {
    
    func isEmail() -> Bool {
        var resultado:Bool
        let emailPattern = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
        let matcher = RegexHelper(emailPattern)
        
        if matcher.match(self){
            resultado = true
        } else {
            resultado = false
        }
        return resultado
    }
    
    func isTelefone() -> Bool {
        var resultado:Bool
        let telefonePattern = "^(\\+[0-9]{2})\\s(\\([0-9]{3}\\))\\s([0-9]{4,5})-([0-9]{4})$"
        let matcher = RegexHelper(telefonePattern)
        
        if matcher.match(self){
            resultado = true
        } else {
            resultado = false
        }
        return resultado
    }
    
    func isData() -> Bool {
        var resultado:Bool
        let dataPattern = "^([0-9]{2})\\/([0-9]{2})\\/([0-9]{4})$"
        let matcher = RegexHelper(dataPattern)
        
        if matcher.match(self){
            resultado = true
        } else {
            resultado = false
        }
        return resultado
    }
}

extension NSDate {
    func isMaiorDeIdade() -> Bool {
        
        let data = NSDate()
        let idadeJogador:Int
        let faixaEtaria:Bool
        let calendar = NSCalendar.currentCalendar()
        let dateComponentAtual = calendar.components([NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year], fromDate: data)
        let dateComponentDtNasc = calendar.components([NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year], fromDate: self)
        
        if ( (dateComponentAtual.month < dateComponentDtNasc.month) ||
            ((dateComponentAtual.month == dateComponentDtNasc.month) && (dateComponentAtual.day < dateComponentDtNasc.day))
            )
        {
            //return dateComponentAtual.year - dateComponentDtNasc.year - 1
            idadeJogador = dateComponentAtual.year - dateComponentDtNasc.year - 1
        }
        else {
            //return dateComponentAtual.year - dateComponentDtNasc.year
            idadeJogador = dateComponentAtual.year - dateComponentDtNasc.year - 1
        }
        
        if idadeJogador < 18 {
            faixaEtaria = false
        } else {
            faixaEtaria = true
        }
        
        return faixaEtaria
    }
}