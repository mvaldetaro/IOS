//: Playground - noun: a place where people can play

import UIKit

let dataAtual = NSDate()
var calendario = NSCalendar.currentCalendar()
var inputDtNascimento = "14/11/1984"

let formataData = NSDateFormatter()
formataData.locale = NSLocale(localeIdentifier: "pt_BR")
formataData.dateFormat = "dd MMMM, yyyy"

let data = formataData.dateFromString("4 de jun de 2016")

//let idade = calendario.components([NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Minute], fromDate: data!)
