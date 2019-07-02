//
//  ThoughtCell.swift
//  RNDM
//
//  Created by Morgan Hondros on 6/30/19.
//  Copyright © 2019 Morgan Hondros. All rights reserved.
//

import UIKit
import Firebase

class ThoughtCell: UITableViewCell {
    
    @IBOutlet weak var usernameLbl: UILabel!
    @IBOutlet weak var timestampLbl: UILabel!
    @IBOutlet weak var thoughtTxtLbl: UILabel!
    @IBOutlet weak var likesImg: UIImageView!
    @IBOutlet weak var likesNumLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(thought: Thought) {
        usernameLbl.text = thought.username
        thoughtTxtLbl.text = thought.thoughtTxt
        likesNumLbl.text = String(thought.numLikes)
        
        let formator = DateFormatter()
        formator.dateFormat = "EEEE, MMM d, yyyy HH:mm"
        let timestamp = formator.string(from: thought.timestamp.dateValue())
        timestampLbl.text = timestamp
        
    }
}

//Old way before putting in the postmark date
//class ThoughtCell: UITableViewCell {
//
//    @IBOutlet weak var usernameLbl: UILabel!
//    @IBOutlet weak var timestampLbl: UILabel!
//    @IBOutlet weak var thoughtTxtLbl: UILabel!
//    @IBOutlet weak var likesImg: UIImageView!
//    @IBOutlet weak var likesNumLbl: UILabel!
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    func configureCell(thought: Thought) {
//        usernameLbl.text = thought.username
//        thoughtTxtLbl.text = thought.thoughtTxt
//        likesNumLbl.text = String(thought.numLikes)
//
//        let formatter = DateFormatter()
//        formatter.dateFormat = "MMM d, hh:mm"
//        let timestamp = formatter.string(from: thought.timestamp)
//        timestampLbl.text = timestamp
//
//    }
//}
