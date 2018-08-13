//
//  Temperaturas.m
//  assessment-questao-3
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "Temperaturas.h"

@interface Temperaturas ()

@end

@implementation Temperaturas


- (void)viewDidLoad {
    [super viewDidLoad];
    
    tipoTemperatura = @"";
    valorTemperatura = 0;
    
    self.temperaturaSelecionada.text = @"";
    self.labelT1.text = @"";
    self.labelT2.text = @"";
    self.labelResultado1.text = @"";
    self.labelResultado2.text = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (IBAction)btnCel:(id)sender {
    tipoTemperatura = @"Celsius";
    self.temperaturaSelecionada.text = tipoTemperatura;
    NSLog(@"%@", tipoTemperatura);
}

- (IBAction)btnKel:(id)sender {
    tipoTemperatura = @"Kelvin";
    self.temperaturaSelecionada.text = tipoTemperatura;
    NSLog(@"%@", tipoTemperatura);
}

- (IBAction)btnFah:(id)sender {
    tipoTemperatura = @"Fahrenheit";
    self.temperaturaSelecionada.text = tipoTemperatura;
    
    NSLog(@"%@", tipoTemperatura);
}

-(NSString *)getTipoTemperatura:(NSString *)tipoTemperatura {
    return 0;
}

- (IBAction)btnConverter:(id)sender {
    
    if ([self.inTemperatura.text isEqualToString:@""]) {
        self.inTemperatura.text =  [NSString stringWithFormat:@"%.1f", valorTemperatura];
    }
    
    valorTemperatura = [self.inTemperatura.text intValue];
    
    NSLog(@"tipo %@, valor %.2f", tipoTemperatura, valorTemperatura);
    
    if ([tipoTemperatura isEqualToString:@"Celsius"]) {
        
        NSLog(@"Calclunado Celsius");
        
        self.labelT1.text = @"Kelvin";
        self.labelT2.text = @"Fahrenheit";
    
        double k = valorTemperatura + 273;
        double f = (9 * valorTemperatura + 160)/5;
        self.labelResultado1.text = [NSString stringWithFormat:@"%.1fK", k];
        self.labelResultado2.text = [NSString stringWithFormat:@"%.1fF", f];
        
    } else if ([tipoTemperatura isEqualToString:@"Kelvin"]) {
        
        NSLog(@"Calclunado Kelvin");
        
        self.labelT1.text = @"Celsius";
        self.labelT2.text = @"Fahrenheit";
        
        double c = valorTemperatura - 273;
        double f = ((valorTemperatura - 273) / 5) * 9 + 32;
        
        self.labelResultado1.text = [NSString stringWithFormat:@"%.2fC", c];
        self.labelResultado2.text = [NSString stringWithFormat:@"%.2fF", f];
    
    } else if([tipoTemperatura isEqualToString:@"Fahrenheit"]) {
        
        NSLog(@"Calclunado Fahrenheit");
        
        self.labelT1.text = @"Celsius";
        self.labelT2.text = @"Kelvin";
        
        double c = ((valorTemperatura - 32) / 9) * 5;
        double k = ((valorTemperatura - 32) / 9) * 5 + 273;
        
        self.labelResultado1.text = [NSString stringWithFormat:@"%.1fC", c];
        self.labelResultado2.text = [NSString stringWithFormat:@"%.1fK", k];
    
    } else {
        // Avisa para inserir o tipo de Temperatura
        
        NSString *title = @"Aviso";
        NSString *message = @"Informe o Tipo de Temperatura!";
        NSString *btnTitle = @"OK";
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle: UIAlertControllerStyleAlert];
        UIAlertAction *okButton = [UIAlertAction actionWithTitle:btnTitle style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:okButton];
        
        [self presentViewController:alert animated:YES completion:nil];
    }
}
@end
