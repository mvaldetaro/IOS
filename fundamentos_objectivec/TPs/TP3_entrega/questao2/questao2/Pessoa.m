//
//  Pessoa.m
//  questao2
//
//  Created by Magno Valdetaro on 3/5/16.
//  Copyright © 2016 Magno Valdetaro. All rights reserved.
//

#import "Pessoa.h"

@implementation Pessoa

-(void)setNome:(NSString *)novoNome {
    nome = novoNome;
};

-(NSString *)nome {
    return nome;
}

-(void)setPeso:(int)novoPeso {
    peso = novoPeso;
};

-(int)peso {
    return peso;
};

-(void)setAltura:(int)novoAltura{
    altura = novoAltura;
};

-(int)altura{
    return altura;
};

-(void)setIdade:(int)novoIdade{
    idade = novoIdade;
};

-(int)idade{
    return idade;
};

@end
