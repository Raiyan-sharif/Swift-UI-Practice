//
//  ViewController.swift
//  FrameworkDemo
//
//  Created by BJIT on 4/9/23.
//

import UIKit
import EmailValidator

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let result = EmailValidator.validateEmail(email: "raiyan@gmail.com")
        print(result)
    }


}

