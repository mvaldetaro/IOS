//
//  ViewController.m
//  calculadora
//
//  Created by Magno Valdetaro on 3/12/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "Calculadora.h"

@interface Calculadora  ()

@end

@implementation Calculadora

- (void)viewDidLoad {
    [super viewDidLoad];
    self.display.text  = @"";
    //self.ponto = 0;
    
    
    NSLog(@"ponto %i",self.ponto);
    //float valor = 5/2;
    //NSLog(@"%f", valor);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//-----------------------
// Ações dos botões
//-----------------------

//bool calculado = false;



// Digitos
//-----------------------

- (IBAction)btnZero:(id)sender {
    NSString *novoValor = self.display.text;
    self.display.text = [novoValor stringByAppendingString: @"0"];
    
    //NSLog(@"%@", self.display.text);
    //NSLog(@"%i", calculado);
}

- (IBAction)btnUm:(id)sender {
    NSString *novoValor = self.display.text;
    self.display.text = [novoValor stringByAppendingString: @"1"];
    
    //NSLog(@"%@", self.display.text);
}

- (IBAction)btnDois:(id)sender {
    NSString *novoValor = self.display.text;
    self.display.text = [novoValor stringByAppendingString: @"2"];
    
    //NSLog(@"%@", self.display.text);
}

- (IBAction)btnTres:(id)sender {
    NSString *novoValor = self.display.text;
    self.display.text = [novoValor stringByAppendingString: @"3"];
    
    //NSLog(@"%@", self.display.text);
}

- (IBAction)btnQuatro:(id)sender {
    NSString *novoValor = self.display.text;
    self.display.text = [novoValor stringByAppendingString: @"4"];
    
    //NSLog(@"%@", self.display.text);
}

- (IBAction)btnCinco:(id)sender {
    NSString *novoValor = self.display.text;
    self.display.text = [novoValor stringByAppendingString: @"5"];
    
    //NSLog(@"%@", self.display.text);
}

- (IBAction)btnSeis:(id)sender {
    NSString *novoValor = self.display.text;
    self.display.text = [novoValor stringByAppendingString: @"6"];
    
    //NSLog(@"%@", self.display.text);
}

- (IBAction)btnSete:(id)sender {
    NSString *novoValor = self.display.text;
    self.display.text = [novoValor stringByAppendingString: @"7"];
    
    //NSLog(@"%@", self.display.text);
}

- (IBAction)btnOito:(id)sender {
    NSString *novoValor = self.display.text;
    self.display.text = [novoValor stringByAppendingString: @"8"];
    
    //NSLog(@"%@", self.display.text);
}

- (IBAction)btnNove:(id)sender {
    NSString *novoValor = self.display.text;
    self.display.text = [novoValor stringByAppendingString: @"9"];

    //NSLog(@"%@", self.display.text);
}

// Operadores
//-----------------------

- (IBAction)btnDivisao:(id)sender {
    //NSLog(@"Divisão");
    
    NSString *displayString = self.display.text;
    if ([displayString length] > 0) {
        NSString *novoValor = self.display.text;
        self.display.text = [novoValor stringByAppendingString: @"/"];
        self.ponto = 0;
        
        //NSLog(@"%@", self.display.text);
    }
    
}

- (IBAction)btnMultiplicacao:(id)sender {
    //NSLog(@"Multiplicação");

    NSString *displayString = self.display.text;
    if ([displayString length] > 0) {
        NSString *novoValor = self.display.text;
        self.display.text = [novoValor stringByAppendingString: @"*"];
        self.ponto = 0;
        
        //NSLog(@"%@", self.display.text);
    }
}

- (IBAction)btnSubtracao:(id)sender {
    //NSLog(@"Subtração");
    
    NSString *displayString = self.display.text;
    if ([displayString length] > 0) {
        NSString *novoValor = self.display.text;
        self.display.text = [novoValor stringByAppendingString: @"-"];
        self.ponto = 0;
        
        //NSLog(@"%@", self.display.text);
    }
}

- (IBAction)btnAdicao:(id)sender {
    //NSLog(@"Adição");
    
    NSString *displayString = self.display.text;
    if ([displayString length] > 0) {
        NSString *novoValor = self.display.text;
        self.display.text = [novoValor stringByAppendingString: @"+"];
        self.ponto = 0;
        
        //NSLog(@"%@", self.display.text);
    }
    
}

- (IBAction)btnIgual:(id)sender {
    //NSLog(@"Igual");
    
    NSString *displayString = self.display.text;
    
    if ([displayString length] > 0) {
        NSString *novoValor = self.display.text;
        
        /*
         * Referencias documentação:
         * https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSExpression_Class/
         * Referencia para solucionar o problema da divisão que retornava apenas inteiros:
         * http://stackoverflow.com/questions/23892130/how-to-get-floating-point-number-from-the-nsexpressions-expressionvaluewithobje
         */
        
        NSPredicate *analisa = [NSPredicate predicateWithFormat: [NSString stringWithFormat:@"1.0 * %@ = 0", novoValor]];
        NSExpression *expressao = [(NSComparisonPredicate *)analisa leftExpression];
        double resultado = [[expressao expressionValueWithObject:nil context: nil] doubleValue];
        
        
        //NSExpression *expressao = [NSExpression expressionWithFormat: novoValor];
        //double resultado = [[expressao expressionValueWithObject:nil context: nil] doubleValue];
        
        //NSLog(@"%f", resultado);
        
        self.display.text = [NSString stringWithFormat: @"%.1f", resultado];
        //bool calculado = true;
        
        //NSLog(@"%i", calculado);
    }
    
}

- (IBAction)btnPonto:(id)sender {
    //NSLog(@"Ponto");
    
    NSString *displayString = self.display.text;
    
    if ([displayString length] > 0 && self.ponto != 1) {
        NSString *novoValor = self.display.text;
        self.display.text = [novoValor stringByAppendingString: @"."];
        self.ponto = 1;
        
        //NSLog(@"%@", self.display.text);
    }
    
    
    //NSLog(@"Ponto %i", self.ponto);
    
}


- (IBAction)btnLimpar:(id)sender {
    self.display.text =  @"";
}

@end
