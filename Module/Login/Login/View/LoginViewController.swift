//
//  LoginViewController.swift
//  Login
//
//  Created by MacBook on 24/05/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var emailText: UITextField!
    @IBOutlet var passwordText: UITextField!
   
    var presenter: LoginPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func loginAction(_ sender: Any) {
        let email: String = emailText.text ?? ""
        let password: String = passwordText.text ?? ""
        
        self.presenter?.login(email: email, password: password)
    }
    
    
    @IBAction func signUpAction(_ sender: Any) {
        self.presenter?.showRegister(viewController: self)
    }
    
}

extension LoginViewController: LoginView {
    func showError() {
        let alert = UIAlertController(
            title: "Peringatan",
            message: "Username atau password salah, silahkan coba lagi",
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}
