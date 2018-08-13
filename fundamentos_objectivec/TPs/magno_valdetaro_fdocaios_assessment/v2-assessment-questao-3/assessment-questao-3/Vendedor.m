//
//  Vendedor.m
//  assessment-questao-3
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "Vendedor.h"

@implementation Vendedor

    -(double)aumentoSalario:(double)isSalario {
        double resultado = isSalario * 1.07;
        double  bonus = isSalario - (isSalario / 1.10);
        return resultado + bonus;
    }

@end
