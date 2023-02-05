//
//  ViewController.swift
//  shopApp
//
//  Created by Kirill Taraturin on 04.02.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func loginButtonDidTapped() {
//        guard loginTextField.text == "Kirill Taraturin", passwordTextField.text == "Shelles" else {
//            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password", textField: passwordTextField)
//            
//            return
//        }
        performSegue(withIdentifier: "showHomeVC", sender: nil)
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in textField?.text = "" }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

