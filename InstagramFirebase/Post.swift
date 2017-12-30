//
//  Post.swift
//  InstagramFirebase
//
//  Created by Stephan Wegmann on 07.12.17.
//  Copyright © 2017 Stephan Wegmann. All rights reserved.
//

import Foundation

struct Post {
    
    let user: User
    let imageUrl: String
    let caption: String
    
    init(user: User, dictionary: [String: Any]) {
        self.user = user
         self.imageUrl = dictionary["imageUrl"] as? String ?? ""
        self.caption = dictionary["caption"] as? String ?? ""
    }
}
