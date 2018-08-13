//
//  main.m
//  tp4
//
//  Created by Magno Valdetaro on 3/19/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pessoa.h"
#import "Grupo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"============================================");
        NSLog(@"TP4 - Fundamentos do Objective C!");
        NSLog(@"============================================");
        
        
        // Questão 1
        
        Pessoa *pessoa = [Pessoa new];
        
        pessoa.idade = 31;
        
        [pessoa valorMin];
        [pessoa valorMax];
        
        // Questão 2
        
        Pessoa *maria = [Pessoa new];
        
        maria.primeiroNome = @"Maria";
        maria.sobrenome = @"Silva";
        maria.peso = 60000; //60 quilos
        maria.altura = 170;
        maria.idade = 19;
        
        
        Pessoa *jose = [Pessoa new];
        
        jose.primeiroNome = @"José";
        jose.sobrenome = @"Silva";
        jose.peso = 90000; //90 quilos
        jose.altura = 180;
        jose.idade = 30;
        
        
        Pessoa *joao = [Pessoa new];
        
        joao.primeiroNome = @"João";
        joao.sobrenome = @"Silva";
        joao.peso = 80000; //60 quilos
        joao.altura = 160;
        joao.idade = 64;
        
        
        Grupo *grupo = [Grupo new];
        
        grupo.nomeGrupo = @"Grupo de Pessoas";
        
        grupo.pessoasGrupo = [NSMutableArray array];
        
        [grupo addPessoas: maria];
        [grupo addPessoas: jose];
        [grupo addPessoas: joao];
        
        [grupo listaPessoas];
        
        [grupo mediaIdade];
        
        [grupo grupos];
        
        //Questão 3
        
        [grupo alturaMedia];
        
        //Questão 4
        [grupo grupos: 0 : 0 : 0 : 0];
        
        
    }
    return 0;
}
