//
//  Post.swift
//  InstagramFirebase
//
//  Created by Stephan Wegmann on 07.12.17.
//  Copyright © 2017 Stephan Wegmann. All rights reserved.
//

import Foundation

struct Post {
    
    var id: String?
    let user: User
    let imageUrl: String
    let caption: String
    let creationDate: Date
    
    var hasLiked = false
    
    init(user: User, dictionary: [String: Any]) {
        self.user = user
         self.imageUrl = dictionary["imageUrl"] as? String ?? ""
        self.caption = dictionary["caption"] as? String ?? ""
        
        let secondsFrom1970 = dictionary["creationDate"] as? Double ?? 0
        self.creationDate = Date(timeIntervalSince1970: secondsFrom1970)
    }
}
