//
//  Funcionario.h
//  assessment-questao-3
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Funcionario : NSObject

    @property (assign) NSString *nome;
    @property (assign) NSString *sexo;
    @property (assign) double salario;

    -(double)aumentoSalario:(double)isSalario;

@end
