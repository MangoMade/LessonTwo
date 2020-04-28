//
//  ViewController.swift
//  LessonTwo
//
//  Created by Hao Cui  on 2020/4/28.
//  Copyright © 2020 Hao Cui . All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 4
    }

    @IBAction func handleLoginButton(_ sender: Any) {
    }
    
}

