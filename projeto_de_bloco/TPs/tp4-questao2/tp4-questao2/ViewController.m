//
//  ViewController.m
//  tp4-questao2
//
//  Created by Magno Valdetaro on 3/20/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "ViewController.h"
#import "SegundaViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"enviar"]) {
        SegundaViewController *controller = (SegundaViewController *)segue.destinationViewController;
        controller.textFieldsContent = self.textField1.text;
        controller.textFieldsContentPart2 = self.textField2.text;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnEnviar:(id)sender {

}

@end
