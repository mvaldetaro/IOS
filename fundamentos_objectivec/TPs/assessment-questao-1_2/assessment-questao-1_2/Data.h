//
//  Data.h
//  assessment-questao-1_2
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject

@property (assign) int dia;
@property (assign) int mes;
@property (assign) int ano;

-(int)adicionarDia;
-(int)adicionarMes;

-(NSString *)toString;

@end
