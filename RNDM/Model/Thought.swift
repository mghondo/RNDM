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
    
    class func parseData(snapshot: QuerySnapshot?) -> [Thought] {
        var thoughts = [Thought]()
        
        guard let snap = snapshot else { return thoughts }
        for document in snap.documents {
            let data = document.data()
            let username = data[USERNAME] as? String ?? "Anonymous"
            //                    let timestamp = data[TIMESTAMP] as? Date ?? Date()
            let timestamp = data[TIMESTAMP] as? Timestamp ?? Timestamp.init(date: Date())
            let thoughtTxt = data[THOUGHT_TXT] as? String ?? ""
            let numLikes = data[NUM_LIKES] as? Int ?? 0
            let numComments = data[NUM_COMMENTS] as? Int ?? 0
            let documentId = document.documentID
            
            let newThought = Thought(userName: username, timestamp: timestamp, thoughtText: thoughtTxt, numComments: numComments, numLikes: numLikes, documentId: documentId)
            //                    let newThought = Thought(username: username, timestamp: timestamp, thoughtTxt: thoughtTxt, numLikes: numLikes, numComments: numComments, documentId: documentId)
            
            thoughts.append(newThought)
        }
        
        return thoughts
    }

}


