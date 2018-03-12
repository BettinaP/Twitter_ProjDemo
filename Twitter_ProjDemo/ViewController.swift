//
//  ViewController.swift
//  Twitter_ProjDemo
//
//  Created by Bettina on 3/11/18.
//  Copyright © 2018 Bettina Prophete. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var submitOrLoginButton: UIButton!
    @IBOutlet weak var changeModeButton: UIButton!
    @IBOutlet weak var changeModeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitOrLoginTapped(_ sender: UIButton) {
   
    }
    
}

