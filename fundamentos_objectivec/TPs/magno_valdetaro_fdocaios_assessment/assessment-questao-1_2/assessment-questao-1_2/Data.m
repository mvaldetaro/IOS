//
//  Data.m
//  assessment-questao-1_2
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "Data.h"

@implementation Data

-(int)adicionarDia:(int)isDia {
    return isDia;
}

-(int)adicionarMes:(int)isMes;{
    return isMes;
}

-(NSString *)toString:(int)adicionarDia :(int)adicionarMes;{
    
    NSString *data = [NSString stringWithFormat:@"%d/%d/%d", adicionarDia, adicionarMes, 2016];
    return data;

}

@end
