//
//  LoginCoordinator.swift
//  MVVM-C
//
//  Created by Luan Arruda on 19/04/24.
//

import Foundation
import UIKit

class LoginCoordinator: CoordinatorProtocol {
    
    var navigationController: UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = LoginViewController()
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func tappedRegisterButton() {
        let registerCoordinator = RegisterCoordinator(navigationController: self.navigationController)
        registerCoordinator.start()
    }
    
}
