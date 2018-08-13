//
//  Vendedor.m
//  assessment-questao-3
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "Vendedor.h"

@implementation Vendedor

    -(double)aumentoSalario {
        double resultado = self.salario * 1.15;
        NSLog(@"%.2f", resultado);
        double  bonus = (self.salario * 1.10) - self.salario;
        NSLog(@"%.2f", bonus);
        return resultado + bonus;
    }

@end
