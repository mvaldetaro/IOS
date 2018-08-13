//
//  ViewController.m
//  tp6
//
//  Created by Magno Valdetaro on 4/9/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *listaCidades;
    
    //NSArray *listaCidades;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    listaCidades = [[NSMutableArray alloc] initWithArray:[NSArray arrayWithObjects:@"Rio de Janeiro", @"São Paulo", @"Belo Horizonte", @"Cabo Frio", @"Campinas", @"Londres", @"Paris", @"Bangkok", @"Cingapura", @"Hong Kong", @"Madri",nil]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return listaCidades.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"TabelaSimples";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = listaCidades[indexPath.row];
    return cell;
}

- (IBAction)btnAdd:(id)sender {
    
    NSString *novaCidade = self.inNovaCidade.text;
    [listaCidades insertObject: novaCidade atIndex:0];
    //[listaCidades addObject: novaCidade];
    [self.tableView reloadData];
    
    
    //NSUInteger tamanhoLista = listaCidades.count;
    //NSLog(@"%@", novaCidade);
    //NSLog(@"%lu", tamanhoLista);
}
@end

