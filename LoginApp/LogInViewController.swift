//
//  ViewController.swift
//  LoginApp
//
//  Created by Yuliya Ten on 03.07.2022.
//

import UIKit

class LogInViewController: UIViewController {
    
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func logInButtonTapped() {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func unwindSegueToLigInScreen(segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func userNameRemind() {
        showAlert(with: "Oops", and: "Your name is User!")
        return
    }
    
    @IBAction func passwordRemind() {
        showAlert(with: "Oops", and: "Your password is Password!")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationViewController = segue.destination as? WelcomeViewController else { return }
        destinationViewController.user = userNameTextField.text
    }
    
}

// MARK: - UIAlertController
extension LogInViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
