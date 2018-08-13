//
//  Grupo.h
//  tp4
//
//  Created by Magno Valdetaro on 3/19/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GrupoDeIdade.h"

@interface Grupo : NSObject <GrupoDeIdade>

    @property (strong) NSString *nomeGrupo;
    @property (strong) NSMutableArray *pessoasGrupo;

    -(void)addPessoas:(Pessoa *) pessoa;
    -(void)listaPessoas;
    -(void)mediaIdade;
    -(void)grupos;


    // Questão 4
    -(void)jovens:(NSInteger)qtd;
    -(void)adultos:(NSInteger)qtd;
    -(void)idosos:(NSInteger)qtd;

@end

// Questão 3

@interface Grupo (altura)

    -(void)alturaMedia;

@end
