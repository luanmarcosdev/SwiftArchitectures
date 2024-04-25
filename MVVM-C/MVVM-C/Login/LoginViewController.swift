//
//  LoginViewController.swift
//  MVVM-C
//
//  Created by Luan Arruda on 19/04/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    var coordinator: LoginCoordinator?
    var loginView: LoginView?
    var loginViewModel: LoginViewModel?
    
    override func loadView() {
        self.loginView = LoginView()
        self.view = self.loginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loginView?.setDelegate(delegate: self)
    }

}

extension LoginViewController: LoginViewDelegate {
    
    func loginAction() {
        self.loginViewModel = LoginViewModel()
        loginViewModel?.authLogin(email: loginView?.emailTextField.text ?? "", password: loginView?.passwordTextField.text ?? "")
    }
    
    func registerAction() {
        self.coordinator?.tappedRegisterButton()
    }
    
    
}
