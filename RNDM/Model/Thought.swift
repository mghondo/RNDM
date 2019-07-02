//
//  Thought.swift
//  RNDM
//
//  Created by Morgan Hondros on 6/30/19.
//  Copyright © 2019 Morgan Hondros. All rights reserved.
//

import Foundation
import Firebase

class Thought {
    private(set) var username: String!
    private(set) var timestamp: Timestamp!
    private(set) var thoughtTxt: String!
    private(set) var numLikes: Int!
    private(set) var numComments: Int!
    private(set) var documentId: String!
    
    
    init(userName: String, timestamp: Timestamp, thoughtText: String, numComments: Int, numLikes: Int, documentId: String) {
        
        self.username = userName
        self.timestamp = timestamp
        self.thoughtTxt = thoughtText
        self.numLikes = numLikes
        self.numComments = numComments
        self.documentId = documentId
    }

}


//Old way before putting in the postmark date
//class Thought {
//    private(set) var username: String!
//    private(set) var timestamp: Date!
//    private(set) var thoughtTxt: String!
//    private(set) var numLikes: Int!
//    private(set) var numComments: Int!
//    private(set) var documentId: String!
//
//
//    init(username: String, timestamp: Date, thoughtTxt: String, numLikes: Int, numComments: Int, documentId: String) {
//
//        self.username = username
//        self.timestamp = timestamp
//        self.thoughtTxt = thoughtTxt
//        self.numLikes = numLikes
//        self.numComments = numComments
//        self.documentId = documentId
//    }
//
//}
