//
//  SomaPA.h
//  assessment-questao-3
//
//  Created by Magno Valdetaro on 3/25/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SomaPA : UIViewController

    @property (strong, nonatomic) IBOutlet UITextField *a1Input;
    @property (strong, nonatomic) IBOutlet UITextField *nInput;
    @property (strong, nonatomic) IBOutlet UITextField *rInput;
    @property (strong, nonatomic) IBOutlet UILabel *resultado;
    

    - (IBAction)btnCalcular;

@end
