//
//  Pessoa.h
//  questao2
//
//  Created by Magno Valdetaro on 3/5/16.
//  Copyright © 2016 Magno Valdetaro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pessoa : NSObject

{
    NSString *nome;
    int peso;
    int altura;
    int idade;
}


-(void)setNome:(NSString *)novoNome;
-(NSString *)nome;

-(void)setPeso:(int)novoPeso;
-(int)peso;

-(void)setAltura:(int)novoAltura;
-(int)altura;

-(void)setIdade:(int)novoIdade;
-(int)idade;

@end
