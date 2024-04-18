//
//  ViewController.swift
//  MVC
//
//  Created by Luan Arruda on 18/04/24.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    private func verifyEmail(){
        // logica para verificar se o email é valido
    }
    
    private func verifyPassword(){
        // logica para verificar se a senha é valida
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func register(_ sender: Any) {
        self.verifyEmail()
        self.verifyPassword()
        let newUser = User(name: self.name.text ?? "", email: self.email.text ?? "" , password: self.password.text ?? "" )
    }
    
}

