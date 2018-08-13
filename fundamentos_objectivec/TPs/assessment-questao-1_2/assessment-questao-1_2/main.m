//
//  main.m
//  assessment-questao-1_2
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Data.h"
#import "DataTempo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Questão 1
       
        Data *novaData = [Data new];
        
        novaData.dia = 25;
        novaData.mes = 03;
        
        NSLog(@"Questão 1");
        
        NSLog(@"%@",[novaData toString]);
        
        
        //Questão 2
        
        DataTempo *novoTempo = [DataTempo new];
        
        
        novoTempo.dia = novaData.dia;
        novoTempo.mes = novaData.mes;
        novoTempo.hora = 13;
        novoTempo.minuto = 50;
        novoTempo.segundo = 36;
        
        NSLog(@"Questão 2");
        
        NSLog(@"%@",[novoTempo toString]);
    }
    return 0;
}
