//
//  Data.m
//  assessment-questao-1_2
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "Data.h"

@implementation Data

-(int)adicionarDia {
    return self.dia;
}

-(int)adicionarMes;{
    return self.mes;
}

-(NSString *)toString;{
    
    NSString *data = [NSString stringWithFormat:@"%d/%d/%d", [self adicionarDia], [self adicionarMes], 2016];
    return data;

}

@end
