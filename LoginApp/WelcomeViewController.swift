//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Yuliya Ten on 04.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    var user: String?
    @IBOutlet var userLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let user = self.user else { return  }
        userLable.text = "Welcome, \(user)"
    }
    
    @IBAction func logOutButtonTapped() {
    }
}
