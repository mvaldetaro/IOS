//
//  DataTempo.m
//  assessment-questao-1_2
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "DataTempo.h"

@implementation DataTempo

-(int)adicionarHora {
    return self.hora;
}

-(int)adicionarMinuto {
    return self.minuto;
}

-(int)adicionarSegundo {
    return self.segundo;
}

-(NSString *)toString{
    
    NSString *data = [NSString stringWithFormat:@"%d/%d/%d - %d:%d:%d", [self adicionarDia], [self adicionarMes], 2016, [self adicionarHora], [self adicionarMinuto], [self adicionarSegundo]];
    return data;
    
}

@end
