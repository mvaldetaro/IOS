//
//  Pessoa.h
//  tp3
//
//  Created by Magno Valdetaro on 3/3/16.
//  Copyright © 2016 Magno Valdetaro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pessoa : NSObject

    @property (strong) NSString *primeiroNome;
    @property (strong) NSString *sobrenome;
    @property (assign) double peso;
    @property (assign) double altura;
    @property (assign) int idade;
    @property (strong) NSString *sexo;

    - (double) imc;
    - (NSString *) situacao;

@end
