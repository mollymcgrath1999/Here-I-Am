//
//  LoginViewController.swift
//  Here_I_Am
//
//  Created by Molly McGrath (s5008390) on 03/02/2020.
//  Copyright © 2020 Molly McGrath (s5008390). All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func loginTapped(_ sender: Any) {
    }
    

}
