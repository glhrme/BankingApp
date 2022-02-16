//
//  UIColor+Extension.swift
//  BankingApp
//
//  Created by Guilherme de Assis dos Santos on 14/02/22.
//

import UIKit

extension UIColor {
    
    enum Pallete {
        case baseGray
        case baseBlack
        case primary
        case baseWhiteButton
        case baseSecondGray
        case baseBlackButtonHighlite
    }
    
    convenience init(named: Pallete) {
        self.init(named: "\(named)")!
    }
    
}
