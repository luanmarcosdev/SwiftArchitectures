//
//  Coordinator.swift
//  MVVM-C
//
//  Created by Luan Arruda on 19/04/24.
//

import Foundation
import UIKit

protocol CoordinatorProtocol {
    
    var navigationController: UINavigationController { get }
    
    init(navigationController: UINavigationController)
    
    func start()
}
