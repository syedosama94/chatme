//
//  ViewController.swift
//  chatme
//
//  Created by Mnet on 5/30/20.
//  Copyright © 2020 Mnet. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onLoginPressed(_ sender: Any) {
        Auth.auth().createUser(withEmail: "adnan@gmail.com", password: "programmer") { authResult, error in
          
            
        }
    }
}
