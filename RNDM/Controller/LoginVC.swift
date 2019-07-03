//
//  LoginVC.swift
//  RNDM
//
//  Created by Morgan Hondros on 7/2/19.
//  Copyright © 2019 Morgan Hondros. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var createUserBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginBtn.layer.cornerRadius = 10
        createUserBtn.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginBtnTapped(_ sender: Any) {
    }
    @IBAction func createUserTapped(_ sender: Any) {
    }
    

}
