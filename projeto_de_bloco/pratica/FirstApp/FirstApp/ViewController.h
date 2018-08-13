//
//  ViewController.h
//  FirstApp
//
//  Created by Magno Valdetaro on 3/6/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)mostrarMsg:(id)sender;

- (IBAction)okTouched:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *botaoAlteraTexto;
@property (weak, nonatomic) IBOutlet UILabel *labelExemplo;
@property (weak, nonatomic) IBOutlet UILabel *dataShowLabel;
@property (weak, nonatomic) IBOutlet UITextField *dataInputText;



@end

