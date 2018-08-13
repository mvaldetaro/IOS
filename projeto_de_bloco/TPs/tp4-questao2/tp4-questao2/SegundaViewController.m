//
//  SegundaViewController.m
//  tp4-questao2
//
//  Created by Magno Valdetaro on 3/20/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "SegundaViewController.h"

@interface SegundaViewController ()

@end

@implementation SegundaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.labelField.text = self.textFieldsContent;
    self.labelField2.text = self.textFieldsContentPart2;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
