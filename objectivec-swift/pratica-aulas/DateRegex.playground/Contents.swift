//: Playground - noun: a place where people can play

import UIKit

let dataAtual = NSDate()

let formatadorData = NSDateFormatter()

// O formatadorDeData irá utilizar as configurações padrões de acordo com a localização do dispositivo. A não ser que uma outra localização tenha sido implicitamente introduzida

formatadorData.locale = NSLocale.currentLocale()

formatadorData.locale = NSLocale(localeIdentifier: "pt_BR")

//formatadorData.locale = NSLocale(localeIdentifier: "en_US")

formatadorData.dateStyle = NSDateFormatterStyle.FullStyle

formatadorData.stringFromDate(dataAtual)

formatadorData.dateStyle = NSDateFormatterStyle.LongStyle

formatadorData.stringFromDate(dataAtual)

formatadorData.dateStyle = NSDateFormatterStyle.MediumStyle

formatadorData.stringFromDate(dataAtual)

formatadorData.dateStyle = NSDateFormatterStyle.ShortStyle

formatadorData.stringFromDate(dataAtual)

formatadorData.dateFormat = "EEEE, dd MMMM, yyyy"

formatadorData.stringFromDate(dataAtual)

//formatadorData.dateFormat = "HH:mm:ss"

//formatadorData.stringFromDate(dataAtual)

//let dateComponents = NSDateComponents()
//let dia  = dateComponents.day
//let mes = dateComponents.month

var dataConvertida = formatadorData.stringFromDate(dataAtual)


var idade = 0
let calendario = NSCalendar.currentCalendar()
let dateComponents = calendario.components([NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year], fromDate: dataAtual)



dateComponents.day
dateComponents.month
dateComponents.year


func calculaIdade (dtNasc: NSDate) -> NSInteger {
    
    let data = NSDate()
    let calendar = NSCalendar.currentCalendar()
    let dateComponentAtual = calendar.components([NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year], fromDate: data)
    let dateComponentDtNasc = calendar.components([NSCalendarUnit.Day, NSCalendarUnit.Month, NSCalendarUnit.Year], fromDate: dtNasc)
    
    if ( (dateComponentAtual.month < dateComponentDtNasc.month) ||
        ((dateComponentAtual.month == dateComponentDtNasc.month) && (dateComponentAtual.day < dateComponentDtNasc.day))
        )
    {
        return dateComponentAtual.year - dateComponentDtNasc.year - 1
    }
    else {
        return dateComponentAtual.year - dateComponentDtNasc.year
    }
}

let aniversario = "14/11/1984"
let dateFormatter = NSDateFormatter()
dateFormatter.dateFormat = "dd-MM-yyyy"

calculaIdade(dateFormatter.dateFromString(aniversario)!)

// REGEX


struct RegexHelper {
    let regex: NSRegularExpression?
    
    init(_ pattern: String) {
        regex = try! NSRegularExpression(pattern: pattern, options: .CaseInsensitive)
    }
    
    func match(input:String) -> Bool {
        if let matches = regex?.matchesInString(
            input,
            options: [],
            range:  NSMakeRange(0, input.characters.count)){
                return  matches.count > 0
        } else {
            return false
        }
    }
}

let mailPattern = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
let matcher = RegexHelper(mailPattern)
let enderecoDeEmail = "professor@infnet.edu.br"

if matcher.match(enderecoDeEmail){
    print("Endereço de e-mail válido")
} else {
    print("Endereço de e-mail inválido")
}










