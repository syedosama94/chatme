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
        let homeStoryBoard = UIStoryboard(name: "SignInViewController", bundle: Bundle.main)
        let homeViewController = homeStoryBoard.instantiateInitialViewController()
         self.navigationController?.pushViewController(homeViewController!, animated: true)
    }
    
    
    @IBAction func onLoginPressed(_ sender: Any) {
        Auth.auth().createUser(withEmail: "adnan@gmail.com", password: "programmer") { authResult, error in
          
            
        }
    }
}
