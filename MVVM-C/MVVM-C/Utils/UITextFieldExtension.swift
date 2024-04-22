//
//  UITextFieldExtension.swift
//  MVVM-C
//
//  Created by Luan Arruda on 22/04/24.
//

import Foundation
import UIKit

extension UITextField {
    
    func setLeftPaddingPoints(_ ammount: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: ammount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
}
