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
    
    private let user = "Student"
    private let password = "Your_choice"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationViewController = segue.destination as? WelcomeViewController else { return }
        destinationViewController.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButtonTapped() {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login or password",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeViewController", sender: nil)
    }
    
    @IBAction func dataRemind(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Mistake", message: "Your name is \(user)")
        : showAlert(title: "Mistake", message: "Your password is \(password)")
        
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
}

// MARK: - UIAlertController
extension LogInViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
