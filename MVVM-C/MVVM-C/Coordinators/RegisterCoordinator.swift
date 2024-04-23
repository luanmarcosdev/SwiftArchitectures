//
//  RegisterCoordinator.swift
//  MVVM-C
//
//  Created by Luan Arruda on 22/04/24.
//

import Foundation
import UIKit

class RegisterCoordinator: CoordinatorProtocol {
    
    var navigationController: UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = RegisterViewController()
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    
}
