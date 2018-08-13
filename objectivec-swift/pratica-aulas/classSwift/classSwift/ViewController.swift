//
//  ViewController.swift
//  classSwift
//
//  Created by Magno Valdetaro on 4/24/16.
//  Copyright © 2016 infnet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let guerreiro = Guerreiro()
        
        guerreiro.forca = 20
        guerreiro.atacar(200)
        guerreiro.gritoDeGuerra()
        
        let person = Person()
        
        person.firstName = "Magno"
        person.lastName = "Valdetaro"
        
        print(person.fullName())
        
        person.printName()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

