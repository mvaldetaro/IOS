//
//  Temperaturas.h
//  assessment-questao-3
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Temperaturas : UIViewController {

    NSString *tipoTemperatura;
    
    double valorTemperatura;

}

    - (IBAction)btnCel:(id)sender;
    - (IBAction)btnKel:(id)sender;
    - (IBAction)btnFah:(id)sender;


    @property (strong, nonatomic) IBOutlet UILabel *temperaturaSelecionada;
    @property (strong, nonatomic) IBOutlet UITextField *inTemperatura;

    - (IBAction)btnConverter:(id)sender;

    @property (strong, nonatomic) IBOutlet UILabel *labelT1;
    @property (strong, nonatomic) IBOutlet UILabel *labelT2;
    @property (strong, nonatomic) IBOutlet UILabel *labelResultado1;
    @property (strong, nonatomic) IBOutlet UILabel *labelResultado2;

    -(NSString *)getTipoTemperatura:(NSString *)tipoTemperatura;

@end
