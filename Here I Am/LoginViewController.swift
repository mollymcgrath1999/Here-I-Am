//
//  LoginViewController.swift
//  Here_I_Am
//
//  Created by Molly McGrath (s5008390) on 03/02/2020.
//  Copyright © 2020 Molly McGrath (s5008390). All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailNameTextField: UITextField!
    
    
    @IBOutlet weak var passwordNameTextField: UITextField!
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpElements()
    }
    
    func setUpElements(){
        
        // Hide the error label
        errorLabel.alpha = 0
        
        
        //Stlye the elements
        
//        Utilities.styleTextField(firstNameTextField)
//        
//        Utilities.styleTextField(lastNameTextField)
//        
//        Utilities.styleFilledButton(loginButton)
        
        
    }

 
    
    
    @IBAction func loginTapped(_ sender: Any) {
        
        
        // TODO: Validate Text Fields
        
        //Create cleaned versions of the text field
        let email = emailNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines) 
        
        // Signing in the user
        Auth.auth().signIn(withEmail: email, link: password) { (result, error) in
            
            if error != nil {
                //Couldn't sign up
                self.errorLabel.text = error!.localizedDescription
                self.errorLabel.alpha = 1
            }
            else {
                let homeViewController =
                          
                    self.storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.homeViewController) as? HomeViewController
                self.view.window?.rootViewController = homeViewController
                self.view.window?.makeKeyAndVisible()
                
                
                
            }
        }
        
    }
    
    
    
    

}
