//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Yuliya Ten on 04.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    var user = ""
    
    @IBOutlet var userLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLable.text = "Welcome, \(user)!"
    }
}
