//
//  main.swift
//  assessment_q2
//
//  Created by Magno Valdetaro on 6/5/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import Foundation

let set1: Set = [10, 40, 20, 15, 60]
let set2: Set = [20, 45, 10, 70, 50]
let set3: Set = [1, 50, 60, 10]

print(set1.union(set2))
print(set1.intersect(set3))
print(set1.subtract(set2))
print(set3.exclusiveOr(set1))

