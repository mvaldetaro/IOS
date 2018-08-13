//
//  ViewController.h
//  calculadora
//
//  Created by Magno Valdetaro on 3/12/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Calculadora : UIViewController

//Digitos

    - (IBAction)btnZero:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnZero;

    - (IBAction)btnUm:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnUm;

    - (IBAction)btnDois:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnDois;

    - (IBAction)btnTres:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnTres;

    - (IBAction)btnQuatro:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnQuatro;

    - (IBAction)btnCinco:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnCinco;

    - (IBAction)btnSeis:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnSeis;

    - (IBAction)btnSete:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnSete;

    - (IBAction)btnOito:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnOito;

    - (IBAction)btnNove:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnNove;

//Operadores

    - (IBAction)btnDivisao:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnDivisao;

    - (IBAction)btnMultiplicacao:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnMultiplicacao;

    - (IBAction)btnSubtracao:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnSubtracao;

    - (IBAction)btnAdicao:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnAdicao;

    - (IBAction)btnIgual:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnIgual;

    - (IBAction)btnPonto:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnPonto;

// Display e clear

    @property (weak, nonatomic) IBOutlet UILabel *display;

    - (IBAction)btnLimpar:(id)sender;
    @property (weak, nonatomic) IBOutlet UIButton *btnLimpar;

// variaveis

    @property int ponto;

@end

