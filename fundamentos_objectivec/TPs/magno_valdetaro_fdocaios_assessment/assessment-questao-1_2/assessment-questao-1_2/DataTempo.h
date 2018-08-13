//
//  DataTempo.h
//  assessment-questao-1_2
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "Data.h"

@interface DataTempo : Data

    @property (assign) int hora;
    @property (assign) int minuto;
    @property (assign) int segundo;

    -(int)adicionarHora:(int)isHora;
    -(int)adicionarMinuto:(int)isMinuto;
    -(int)adicionarSegundo:(int)isSegundo;

-(NSString *)toString:(int)adicionarDia :(int)adicionarMes :(int)adicionarHora :(int)adicionarMinuto :(int)adicionarSegundo;

@end
