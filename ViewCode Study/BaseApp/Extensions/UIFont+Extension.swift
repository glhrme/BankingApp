//
//  UIFont+Extension.swift
//  BankingApp
//
//  Created by Guilherme de Assis dos Santos on 15/02/22.
//

import UIKit

extension UIFont {
    
    enum Fonts {
        case SFPro
    }
    
    convenience init?(named: Fonts, size: CGFloat) {
        self.init(name: "\(named)", size: size)
    }
}

