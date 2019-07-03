//
//  CreateUserVC.swift
//  RNDM
//
//  Created by Morgan Hondros on 7/2/19.
//  Copyright © 2019 Morgan Hondros. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

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
        
        guard let email = emailTxt.text,
            let password = passwordTxt.text,
            let username = usernameTxt.text else { return }
        
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            if let error = error {
                debugPrint("TOTALLY AND ERRO CREATING USER: \(error.localizedDescription)")
            }
            let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
            changeRequest?.displayName = username
            changeRequest?.commitChanges(completion: { (error) in
                if let error = error {
                    debugPrint(error.localizedDescription)
                }
            })
            
            guard let userId = user?.user.uid else { return }
            Firestore.firestore().collection(USERS_REF).document(userId).setData(
                [USERNAME : username,
                 DATE_CREATED : FieldValue.serverTimestamp()], completion: { error in
                    if let error = error {
                        print(#line, #function, error.localizedDescription)
                    } else {
                        self.dismiss(animated: true, completion: nil)
                    }
            })

        }
    }
    
    @IBAction func cancelTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
//    Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
//    if let error = error {
//    debugPrint("Error creating user: \(error.localizedDescription)")
//    }
//
//    let changeRequest = CURRENT_USER?.createProfileChangeRequest()
//    changeRequest?.displayName = username
//    changeRequest?.commitChanges(completion: { (error) in
//    if let error = error {
//    debugPrint(error.localizedDescription)
//    }
//    })
//
//    guard let userId = CURRENT_USER?.uid else { return }
//    Firestore.firestore().collection(USERS_REF).document(userId).setData([
//    USERNAME : username,
//    DATE_CREATED : FieldValue.serverTimestamp()
//    ], completion: { (error) in
//    if let error = error {
//    debugPrint(error.localizedDescription)
//    } else {
//    self.dismiss(animated: true, completion: nil)
//    }
//    })
//
    
    
}
