#import <Foundation/Foundation.h>
#import "Pessoa.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Pessoa *pessoa = [[Pessoa alloc] init];
        Pessoa *crianca = [[Pessoa alloc] init];
        
        pessoa.peso = 90000; //90 quilos
        pessoa.altura = 190; // 1,90 metro de altura
        pessoa.idade = 25; // 25 anos
        
        NSLog(@"O IMC é %.2f", pessoa.imc);
        NSLog(@"%@", pessoa.situacao);
        
        crianca.peso = 20000; // 20 quilos
        crianca.altura = 100; //  1 metro de altura
        crianca.idade = 6; // 10 anos
        crianca.sexo = @"M"; // 'M' para masculino e 'F' para Feminino
        
        NSLog(@"O IMC é %.2f", crianca.imc);
        NSLog(@"%@", crianca.situacao);
    }
    return 0;
}