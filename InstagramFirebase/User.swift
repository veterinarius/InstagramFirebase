//
//  User.swift
//  InstagramFirebase
//
//  Created by Stephan Wegmann on 30.12.17.
//  Copyright © 2017 Stephan Wegmann. All rights reserved.
//

import UIKit

struct User {
    let username: String
    let profileImageUrl: String
    
    init(dictionary: [String: Any]) {
        self.username = dictionary["username"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
    }
}
