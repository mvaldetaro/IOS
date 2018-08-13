//
//  Funcionario.m
//  assessment-questao-3
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "Funcionario.h"

@implementation Funcionario

-(double)aumentoSalario:(double)isSalario {
    
    double resultado = isSalario * 1.07;
    return resultado;
}

@end
