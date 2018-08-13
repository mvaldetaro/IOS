//
//  Pessoa.m
//  tp3
//
//  Created by Magno Valdetaro on 3/3/16.
//  Copyright © 2016 Magno Valdetaro. All rights reserved.
//

#import "Pessoa.h"

@implementation Pessoa
    - (double) imc {
        double valorIMC = self.peso/(self.altura * self.altura);
        return valorIMC * 10;
    }

    - (NSString *) situacao {
        if (self.idade > 15) {
            
            // Resultado acima de 15 anos
            if (self.imc < 17) {
                return @"Muito abaixo do peso";
            } else if (self.imc >= 17 && self.imc <= 18.49) {
                return @"Abaixo do peso";
            } else if (self.imc >= 18.5 && self.imc <= 24.99) {
                return @"Peso normal";
            } else if (self.imc >= 25 && self.imc <= 29.99) {
                return @"Acima do peso";
            } else if (self.imc >= 30 && self.imc <= 34.99) {
                return @"Obesidade 1";
            } else if (self.imc >= 35 && self.imc <= 39.99) {
                return @"Obesidade 2 (Severa)";
            } else {
                return @"Obesidade 3 (Mórbida)";
            }
            
        } else if (self.idade <= 15 && self.idade >= 6) {
        
            if ([self.sexo isEqualToString: @"M"]) {
                
                // Resultados Menino
                switch (self.idade) {
                    case 6:
                        if (self.imc < 16.6) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 16.6 && self.imc < 18.0) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    case 7:
                        if (self.imc < 17.3) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 17.3 && self.imc < 19.1) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    case 8:
                        if (self.imc < 17.7) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 17.7 && self.imc < 20.3) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    case 9:
                        if (self.imc < 18.8) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 18.8 && self.imc < 21.4) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    case 10:
                        if (self.imc < 19.6) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 19.6 && self.imc < 22.5) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    case 11:
                        if (self.imc < 20.3) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 20.3 && self.imc < 23.7) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    case 12:
                        if (self.imc < 21.1) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 21.1 && self.imc < 24.8) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    case 13:
                        if (self.imc < 21.9) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 21.9 && self.imc < 25.9) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    case 14:
                        if (self.imc < 22.7) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 22.7 && self.imc < 26.9) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    case 15:
                        if (self.imc < 23.6) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 23.6 && self.imc < 27.7) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    default:
                        return 0;
                        break;
                }
                
            
            } else if ([self.sexo isEqualToString: @"F"]) {
            
                // Resultados Menina
                switch (self.idade) {
                    case 6:
                        if (self.imc < 16.1) {
                            return @"Menina: Peso normal";
                        } else if (self.imc >= 16.1 && self.imc < 17.4) {
                            return @"Menina: Sobrepeso";
                        } else {
                            return @"Menina: Obesidade";
                        }
                        break;
                    case 7:
                        if (self.imc < 17.1) {
                            return @"Menina: Peso normal";
                        } else if (self.imc >= 17.1 && self.imc < 18.9) {
                            return @"Menina: Sobrepeso";
                        } else {
                            return @"Menina: Obesidade";
                        }
                        break;
                    case 8:
                        if (self.imc < 18.1) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 18.1 && self.imc < 20.3) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    case 9:
                        if (self.imc < 19.1) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 19.1 && self.imc < 21.7) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    case 10:
                        if (self.imc < 20.1) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 20.1 && self.imc < 23.5) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    case 11:
                        if (self.imc < 21.1) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 21.1 && self.imc < 24.5) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    case 12:
                        if (self.imc < 22.1) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 22.1 && self.imc < 25.9) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    case 13:
                        if (self.imc < 23.0) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 23.0 && self.imc < 27.7) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    case 14:
                        if (self.imc < 23.8) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 23.8 && self.imc < 27.9) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    case 15:
                        if (self.imc < 24.2) {
                            return @"Menino: Peso normal";
                        } else if (self.imc >= 24.2 && self.imc < 28.8) {
                            return @"Menino: Sobrepeso";
                        } else {
                            return @"Menino: Obesidade";
                        }
                        break;
                    default:
                        return 0;
                        break;
                }
                
            } else {

                return @"Sexo especificado não existe ou é inválido";
            }
        
        } else {
            return @"Menor de 6 anos";
        }
    }

@end


