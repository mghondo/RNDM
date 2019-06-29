//
//  AddThoughVCViewController.swift
//  RNDM
//
//  Created by Morgan Hondros on 6/29/19.
//  Copyright © 2019 Morgan Hondros. All rights reserved.
//

import UIKit
import Firebase

class AddThoughVC: UIViewController, UITextViewDelegate {

    
    //Outlets
    @IBOutlet weak var categorySegment: UISegmentedControl!
    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var thoughtTxt: UITextView!
    @IBOutlet weak var postBtn: UIButton!
    
    // Variables
    
    private var selectedCategory = "funny"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postBtn.layer.cornerRadius = 4
        thoughtTxt.layer.cornerRadius = 4
        thoughtTxt.text = "My random thought..."
        thoughtTxt.textColor = UIColor.lightGray
        thoughtTxt.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
        textView.textColor = UIColor.darkGray
    }
    
    @IBAction func categoryChanged(_ sender: Any) {
    }
    @IBAction func postBtnTapped(_ sender: Any) {
        Firestore.firestore().collection("thoughts").addDocument(data: ["" : ""]) { (err) in
            if let err = err {
                debugPrint("Error adding document: \(err)")
            } else {
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    

}
