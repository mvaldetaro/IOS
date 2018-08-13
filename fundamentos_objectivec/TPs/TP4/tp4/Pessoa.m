//
//  Pessoa.m
//  tp4
//
//  Created by Magno Valdetaro on 3/19/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "Pessoa.h"

@implementation Pessoa

-(double) valorMin {
    double resMinHomen = (220 - self.idade) * 0.60;
    double resMinMulher = (226 - self.idade) * 0.60;
    NSLog(@"Frequência Cardíaca para Emagrecer:");
    NSLog(@"    Homen: miníma %.2f", resMinHomen);
    NSLog(@"    Mulher: miníma %.2f", resMinMulher);
    return 0;
};

-(double) valorMax {
    double resMaxHomen = (220 - self.idade) * 0.75;
    double resMaxMulher = (226 - self.idade) * 0.75;
    NSLog(@"    Homen: máxima %.2f", resMaxHomen);
    NSLog(@"    Mulher: máxima %.2f", resMaxMulher);
    return 0;
};

@end
