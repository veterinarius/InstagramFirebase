//
//  Post.swift
//  InstagramFirebase
//
//  Created by Stephan Wegmann on 07.12.17.
//  Copyright © 2017 Stephan Wegmann. All rights reserved.
//

import Foundation

struct Post {
    let imageUrl: String
    
    init(dictionary: [String: Any]) {
         self.imageUrl = dictionary["imageUrl"] as? String ?? ""
    }
}
