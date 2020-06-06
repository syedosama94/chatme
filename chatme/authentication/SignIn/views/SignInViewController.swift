//
//  SignInViewController.swift
//  chatme
//
//  Created by Mnet on 6/6/20.
//  Copyright © 2020 Mnet. All rights reserved.
//

import UIKit
import Firebase

class SignInViewController : UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signInButton: UIButton!
    
    
    @IBAction func onSignInPressed(_ sender: Any) {
        print("yo there")
        
        Auth.auth().signIn(withEmail: "adnan@gmail.com", password: "programmer") { [weak self] authResult, error in
          guard let strongSelf = self else { return }
          // ...
            print(authResult)
            print (error)
           let homeStoryBoard = UIStoryboard(name: "HomeViewController", bundle: Bundle.main)
           let homeViewController = homeStoryBoard.instantiateInitialViewController()
            self?.navigationController?.pushViewController(homeViewController!, animated: true)
        }

        
        
        
    }
    
    
    
}
