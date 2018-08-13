//
//  SomaPA.m
//  assessment-questao-3
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "SomaPA.h"

@interface SomaPA ()

@end

@implementation SomaPA

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.a1Input.keyboardType = UIKeyboardTypeDecimalPad;
    self.nInput.keyboardType = UIKeyboardTypeDecimalPad;
    self.rInput.keyboardType = UIKeyboardTypeDecimalPad;
    
    self.resultado.text = @"";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}



//-(int)somaPA {
    
//    int a1 = [self.a1Input.text intValue];
//    int n = [self.nInput.text intValue];
//    int r = [self.rInput.text intValue];
//
//    int resultado = a1+(n-1)*r;
    
//    NSLog(@"%d", resultado);
    
//    return resultado;
//}

- (IBAction)btnCalcular {

    int a1 = [self.a1Input.text intValue];
    int an = [self.nInput.text intValue];
    int n = [self.rInput.text intValue];
    
    //((A1 + An)*n)/2
    
    //int an = a1+(n-1)*r;
    
    int s = ((a1+an)*n)/2;
    
    NSLog(@"%d", s);
    
    NSString *resultado = [NSString stringWithFormat:@"%d", s];
    
    self.resultado.text = resultado;
    
}
@end
