//
//  novoSalario.h
//  assessment-questao-3
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface novoSalario : UIViewController
{
    double valorSalario;
}
    @property (strong, nonatomic) IBOutlet UITextField *inSalario;
    @property (strong, nonatomic) IBOutlet UILabel *isNovoSalario;

    - (IBAction)btnFuncionario:(id)sender;
    - (IBAction)btnGerente:(id)sender;
    - (IBAction)btnVendedor:(id)sender;
@end
