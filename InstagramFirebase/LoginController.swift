//
//  LoginController.swift
//  InstagramFirebase
//
//  Created by Stephan Wegmann on 21.09.17.
//  Copyright © 2017 Stephan Wegmann. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    let signUpBotton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Don´t have an account? Sign up.", for: .normal)
        button.addTarget(self, action: #selector(handleShowSignUp), for: .touchUpInside)
        return button
        
    }()
    
    @objc func handleShowSignUp() {
        let signUpController = SignUpController()
        navigationController?.pushViewController(signUpController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
        
        view.backgroundColor = .white
        
        view.addSubview(signUpBotton)
        signUpBotton.anchor(top: nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 50)
    }
}
