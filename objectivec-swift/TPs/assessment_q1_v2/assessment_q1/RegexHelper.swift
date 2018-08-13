//
//  RegexHelper.swift
//  assessment_q1
//
//  Created by Magno Valdetaro on 6/4/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

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