//
//  ViewController.m
//  TableSimples
//
//  Created by Magno Valdetaro on 4/9/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{

    NSArray *listaCompras;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    listaCompras = @[@"Arroz", @"Feijão", @"Carne", @"Frango", @"Batata", @"Biscoito"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return listaCompras.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"TabelaSimples";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = listaCompras[indexPath.row];
    return cell;
}

@end
