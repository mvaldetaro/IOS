//
//  ViewController.h
//  tp6
//
//  Created by Magno Valdetaro on 4/9/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITextField *inNovaCidade;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)btnAdd:(id)sender;

@end

