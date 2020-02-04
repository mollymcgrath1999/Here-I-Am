//
//  SignUpViewController.swift
//  Here_I_Am
//
//  Created by Molly McGrath (s5008390) on 03/02/2020.
//  Copyright © 2020 Molly McGrath (s5008390). All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var signUpButton: UIButton!
    
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements() {
        
        // Hide the error Label
        errorLabel.alpha = 0
        
        //Style the elements
        
//        Utilities.styleTextField(firstNameTextField)
//        
//        Utilities.styleTextField(lastNameTextField)
//        
//        Utilities.styleTextField(emailTextField)
//        
//        Utilities.styleTextField(passwordTextField)
//
//        Utilities.styleFilledButton(signUpButton)
        
        
    }
    
    
    // Check the fields and validate that the data is correct. If everything is correct, this method returns nil. Otherwise, it returns the error message
    
    func validateFields() -> String? {
        
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
           lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
           emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            {
                
                return "Please fill out all Fields" }
       
        
        return nil 
    }
        
 
        
        
        
    
        
        // Check that all fields are filled in
         
    
        
        

   
            
        
        // Check if the password valid
        
        
        
    
        
         
        
    
    
    @IBAction func signUpTapped(_ sender: Any) {
        // Validate the fields
        
        // Create the user
        
        // Transition to the home screen
        
        
    }
    
    
    

}
