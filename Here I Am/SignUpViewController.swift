//
//  SignUpViewController.swift
//  Here_I_Am
//
//  Created by Molly McGrath (s5008390) on 03/02/2020.
//  Copyright © 2020 Molly McGrath (s5008390). All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth



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
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
            
            {
                
                return "Please fill out all Fields"
                
                
                
        }
       
        // Check if the password is secure
        
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) == false {
            
            // Password isn't secure
            
            return "Please make sure your password is at least 8 characters, contains a special character and a number"
        }
        
        return nil 
    }
        
 
        
        
        
    
        
        // Check that all fields are filled in
         
    
        
        

   
            
        
        // Check if the password valid
        
        
        
    
        
         
        
    
    
    @IBAction func signUpTapped(_ sender: Any) {
        
        func showError(_message:String) {
            
            errorLabel.text = _message
            errorLabel.alpha = 1
        }
        
        // Validate the fields
        let error = validateFields()
        if error != nil {
            
            // There's something wrong with the fields, show error message
            
            showError(_message: error!)
        }
        
        else {
            
            // Create cleaned versions of the data
            let firstName = firstNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let lastName = lastNameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            // Create the user
            Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
                
                
            // Check for errors
                if err != nil {
                
                    if err != nil {
                    // There was an error creating the user
                    showError(_message: " Error creating user")
                }
                        
                else {
                    // User was created successfully, now sotre the first name and last name
                        let db = Firestore.firestore()
                        db.collection("users").addDocument(data:["firstname":firstName, "lastname":lastName, "uid":result!.user.uid]) { (error) in
                            
                            if error != nil {
                                // Show error message
                                showError(_message:"Error saving user data")
                                
                            }
                        }
                    
                    // Transistion to the home screen
                        self.transitionToHome()
                    
                    }
                    
                    
                    
                    
            }
           
            
            
     
        
    }
    
  
    
    

}
}
    func transitionToHome() {
        let homeViewController =
            
        storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.homeViewController) as? HomeViewController
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()

    }

}
