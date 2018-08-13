//
//  DataTempo.m
//  assessment-questao-1_2
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "DataTempo.h"

@implementation DataTempo

-(int)adicionarHora:(int)isHora {
    return isHora;
}

-(int)adicionarMinuto:(int)isMinuto {
    return isMinuto;
}

-(int)adicionarSegundo:(int)isSegundo {
    return isSegundo;
}

-(NSString *)toString:(int)adicionarDia :(int)adicionarMes :(int)adicionarHora :(int)adicionarMinuto :(int)adicionarSegundo;{
    
    NSString *data = [NSString stringWithFormat:@"%d/%d/%d - %d:%d:%d", adicionarDia, adicionarMes, 2016, adicionarHora, adicionarMinuto, adicionarSegundo];
    return data;
    
}

@end
