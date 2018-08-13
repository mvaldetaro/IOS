//
//  Pessoa.h
//  tp4
//
//  Created by Magno Valdetaro on 3/19/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "Animal.h"

@interface Pessoa : Animal

    @property (strong) NSString *primeiroNome;
    @property (strong) NSString *sobrenome;
    @property (assign) int peso;
    @property (assign) int altura;
    @property (assign) int idade;

    -(double) valorMin;
    -(double) valorMax;

@end
