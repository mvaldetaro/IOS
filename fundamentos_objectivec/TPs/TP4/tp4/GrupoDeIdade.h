//
//  GrupoDeIdade.h
//  tp4
//
//  Created by Magno Valdetaro on 3/19/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <Foundation/Foundation.h>

//Questão 4

@protocol GrupoDeIdade <NSObject>

    -(void)jovens:(NSInteger)qtd;
    -(void)adultos:(NSInteger)qtd;
    -(void)idosos:(NSInteger)qtd;
    -(void)grupos:(NSInteger)initIdade :(NSInteger)initQtdJovens :(NSInteger)initQtdAdultos :(NSInteger)initQtdIdosos;

@end
