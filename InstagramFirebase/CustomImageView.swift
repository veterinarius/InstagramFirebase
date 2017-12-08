//
//  CustomImageView.swift
//  InstagramFirebase
//
//  Created by Stephan Wegmann on 08.12.17.
//  Copyright © 2017 Stephan Wegmann. All rights reserved.
//

import UIKit

class CustomImageView: UIImageView {
    
    var lastURLUsedToLoadImage: String?
    
    func loadImage(urlString: String) {
        print("Loading image...")
        
        lastURLUsedToLoadImage =  urlString
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            if let err = err {
                print("Failed to fetch post image:", err)
                return
            }
            
            if url.absoluteString != self.lastURLUsedToLoadImage {
                return
            }
            
            guard let imageData = data else { return }
            
            let photoImage = UIImage(data: imageData)
            
//            imageCache[url.absoluteString] = photoImage
            
            DispatchQueue.main.async {
                self.image = photoImage
            }
            
            }.resume()
    }
}
