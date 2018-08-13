//
//  ViewController.h
//  TableSimples
//
//  Created by Magno Valdetaro on 4/9/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <UIKit/UIKit.h>

// Para que o desenvolvedor consiga utilizar todos os recursos da TableView
// é necessário implementar os métodos existentes nos protocolos UITableViewDataSource e UITableViewDelegate.
// Eles são a base por trás da exibição dos dados da TableView.

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>



@end

