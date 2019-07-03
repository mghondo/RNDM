//
//  CreateUserVC.swift
//  RNDM
//
//  Created by Morgan Hondros on 7/2/19.
//  Copyright © 2019 Morgan Hondros. All rights reserved.
//

import UIKit

class CreateUserVC: UIViewController {
    
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var createBtn: UIButton!
    @IBOutlet weak var cancelBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createBtn.layer.cornerRadius = 10
        cancelBtn.layer.cornerRadius = 10

        
    }
    
    @IBAction func createTapped(_ sender: Any) {
        
    }
    
    @IBAction func cancelTapped(_ sender: Any) {
    }
    
    

}
