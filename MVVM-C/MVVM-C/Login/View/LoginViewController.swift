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
    
    override func loadView() {
        self.loginView = LoginView()
        self.view = self.loginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

}
