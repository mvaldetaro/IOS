//: Playground - noun: a place where people can play

import UIKit

var str = "(21) 98888-6767"

str = str.stringByReplacingOccurrencesOfString("[^\\d+]", withString: "", options: .RegularExpressionSearch, range: str.startIndex..<str.endIndex)


