//
//  FirebaseUtils.swift
//  InstagramFirebase
//
//  Created by Stephan Wegmann on 30.12.17.
//  Copyright © 2017 Stephan Wegmann. All rights reserved.
//

import UIKit
import Firebase

extension FIRDatabase {
    
    static func fetchUserWithUID(uid: String, completion: @escaping (User) -> ()) {
        FIRDatabase.database().reference().child("users").child(uid).observe(.value, with: { (snapshot) in
            
            guard let userDictionary = snapshot.value as? [String: Any]
                else {return}
            
            let user = User(uid: uid, dictionary: userDictionary)
            
            completion(user)
            
        }) { (err) in
            print("Failed to fetch user for posts:", err)
        }
    }
}
