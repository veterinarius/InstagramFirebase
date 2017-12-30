//
//  User.swift
//  InstagramFirebase
//
//  Created by Stephan Wegmann on 30.12.17.
//  Copyright © 2017 Stephan Wegmann. All rights reserved.
//

import UIKit

struct User {
    
    let uid: String
    let username: String
    let profileImageUrl: String
    
    init(uid: String, dictionary: [String: Any]) {
        self.uid = uid
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
    }
}
