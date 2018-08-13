//
//  Grupo.m
//  tp4
//
//  Created by Magno Valdetaro on 3/19/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "Pessoa.h"
#import "Grupo.h"
#import "GrupoDeIdade.h"

@implementation Grupo


-(void)addPessoas:(Pessoa *) pessoa {
    [_pessoasGrupo addObject:pessoa];
}

-(void)listaPessoas {
    
    NSLog(@"--------------------------------------------");
    
    NSLog(@"Grupo:");
    
    for (NSInteger i = 0; i < [self.pessoasGrupo count]; i++) {
        
        NSLog(@"    Pessoa %li ................... ",i);
        
        Pessoa *atualPessoa = [_pessoasGrupo objectAtIndex: i];
        
        NSLog(@"        Nome: %@ %@", atualPessoa.primeiroNome, atualPessoa.sobrenome);
        NSLog(@"        Peso: %i", atualPessoa.peso);
        NSLog(@"        Altura: %i", atualPessoa.altura);
        NSLog(@"        Idade: %i", atualPessoa.idade);
    }
}

-(void)mediaIdade {
    
    NSInteger qtdPessoas = [self.pessoasGrupo count];
    NSInteger nIdade = 0;
    NSInteger soma = 0;
    
    for (NSInteger i = 0; i < [self.pessoasGrupo count]; i++) {
        
        Pessoa *atualPessoa = [_pessoasGrupo objectAtIndex: i];
        
        nIdade = atualPessoa.idade;
        
        soma = soma + nIdade;
    }
    
    double resultado = soma/qtdPessoas;
    
    NSLog(@"--------------------------------------------");
    NSLog(@"Média das idades: %.01f", resultado);
    
}

-(void)grupos {}

// Questão 4

-(void)grupos:(NSInteger)initIdade :(NSInteger)initQtdJovens :(NSInteger)initQtdAdultos :(NSInteger)initQtdIdosos{
    
    NSInteger qtdJovens = initQtdJovens;
    NSInteger qtdAdultos = initQtdAdultos;
    NSInteger qtdIdosos = initQtdIdosos;
    NSInteger nIdade = initIdade;
    
    for (NSInteger i = 0; i < [self.pessoasGrupo count]; i++) {
        
        Pessoa *atualPessoa = [_pessoasGrupo objectAtIndex: i];
        
        nIdade = atualPessoa.idade;
        
        if (nIdade >= 0 && nIdade <= 18) {
            qtdJovens = qtdJovens + 1;
        } else if (nIdade >= 19 && nIdade <= 60) {
            qtdAdultos = qtdAdultos + 1;
        } else if (nIdade >= 61) {
            qtdIdosos = qtdIdosos + 1;
        } else {
            qtdJovens = qtdJovens;
            qtdAdultos = qtdAdultos;
            qtdIdosos = qtdIdosos;
        }
        
    }
    
    //NSLog(@"Jovens: %li, Adultos: %li, Idosos: %li", qtdJovens, qtdAdultos, qtdIdosos);

    NSMutableDictionary *grupos = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                    @"qtdJovens", @"Jovens",
                                    @"qtdAdultos", @"Adultos",
                                    @"qtdIdosos", @"Idosos",
                                   nil];
    
    //NSString *jovens = [NSString stringWithFormat:@"%ld", qtdJovens];
    
    [grupos setValue: [NSString stringWithFormat:@"%ld", qtdJovens] forKey:@"Jovens"];
    [grupos setValue: [NSString stringWithFormat:@"%ld", qtdAdultos] forKey:@"Adultos"];
    [grupos setValue: [NSString stringWithFormat:@"%ld", qtdIdosos] forKey:@"Idosos"];
    
    NSLog(@"--------------------------------------------");
    NSLog(@"Grupos: %@", grupos);
}

-(void)jovens:(NSInteger)qtd {}

-(void)adultos:(NSInteger)qtd {}

-(void)idosos:(NSInteger)qtd {}

@end


//Questão 3

@implementation Grupo (altura)

-(void)alturaMedia {
    
    NSInteger qtdPessoas = [self.pessoasGrupo count];
    NSInteger nAltura = 0;
    NSInteger soma = 0;
    
    for (NSInteger i = 0; i < [self.pessoasGrupo count]; i++) {
        
        Pessoa *atualPessoa = [_pessoasGrupo objectAtIndex: i];
        
        nAltura = atualPessoa.altura;
        
        soma = soma + nAltura;
    }
    
    double resultado = (soma/qtdPessoas);
    
    NSLog(@"--------------------------------------------");
    NSLog(@"Média das alturas: %.02f m de altura", resultado/100);
    
}

@end


