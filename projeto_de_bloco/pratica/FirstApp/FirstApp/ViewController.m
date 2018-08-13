//
//  ViewController.m
//  FirstApp
//
//  Created by Magno Valdetaro on 3/6/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// Ao tocar no botão muda o texto do label
- (IBAction)okTouched:(id)sender {
    NSString *aux = @"Texto Alterado";
    self.labelExemplo.text = aux;
}

// Ao tocar no botão exibe um alert
- (IBAction)mostrarMsg:(id)sender {
    
    NSString *title = @"Titulo do Alert";
    NSString *message = @"Olá Meu Amigo!";
    NSString *btnTitle = @"OK";
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle: UIAlertControllerStyleAlert];
    UIAlertAction *okButton = [UIAlertAction actionWithTitle:btnTitle style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:okButton];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}

// Recebe texto do input e altera no label ao enviar
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    _dataShowLabel.text = self.dataInputText.text;
    
    [textField resignFirstResponder];
    return YES;
}

@end
