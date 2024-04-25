//
//  UserViewModel.swift
//  MVVM-C
//
//  Created by Luan Arruda on 23/04/24.
//

import Foundation

class RegisterViewModel {
    
    func registerNewUser(email: String, password: String) {
        
        let user = User(email: email, password: password)
        
        print("Usuário com email \(user.email) sendo criado...")
    }
}
