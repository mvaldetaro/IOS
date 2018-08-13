//
//  novoSalario.m
//  assessment-questao-3
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "Funcionario.h"
#import "Gerente.h"
#import "Vendedor.h"
#import "novoSalario.h"

@interface novoSalario ()

@end

@implementation novoSalario

- (IBAction)btnFuncionario:(id)sender {
    
    Funcionario *funcionario = [Funcionario new];
    funcionario.salario = [self.inSalario.text intValue];
    
    self.isNovoSalario.text = [NSString stringWithFormat:@"%2.2f", [funcionario aumentoSalario: funcionario.salario]];
    
}

- (IBAction)btnGerente:(id)sender {
    
    Gerente *gerente = [Gerente new];
    gerente.salario = [self.inSalario.text intValue];
    
    self.isNovoSalario.text = [NSString stringWithFormat:@"%2.2f", [gerente aumentoSalario: gerente.salario]];

}

- (IBAction)btnVendedor:(id)sender {
    
    Vendedor *vendedor = [Vendedor new];
    vendedor.salario = [self.inSalario.text intValue];
    
    self.isNovoSalario.text = [NSString stringWithFormat:@"%2.2f", [vendedor aumentoSalario: vendedor.salario]];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.isNovoSalario.text = @"";
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
