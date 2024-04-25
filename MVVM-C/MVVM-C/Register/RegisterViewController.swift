//
//  RegisterViewController.swift
//  MVVM-C
//
//  Created by Luan Arruda on 22/04/24.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var coordinator: RegisterCoordinator?
    var registerView: RegisterView?
    var registerViewModel: RegisterViewModel?

    override func loadView() {
        self.registerView = RegisterView()
        self.view = self.registerView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerView?.setDelegate(delegate: self)
        self.registerViewModel = RegisterViewModel()
    }

}

extension RegisterViewController: RegisterViewDelegate {
    
    func registerAction() {
        
        self.registerViewModel?.registerNewUser(email: registerView?.emailTextField.text ?? "", password: registerView?.passwordTextField.text ?? "")
        
        self.coordinator?.tappedRegisterButton()
    }
    
}
