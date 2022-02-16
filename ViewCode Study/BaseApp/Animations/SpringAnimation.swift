//
//  SprintAnimation.swift
//  BankingApp
//
//  Created by Guilherme de Assis dos Santos on 15/02/22.
//

import UIKit

final class SpringAnimation {
    static func animateSpring(_ toAnimate: UIView, duration: TimeInterval, scale: CGFloat) {
        UIView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: .curveEaseIn) {
            toAnimate.transform = CGAffineTransform(scaleX: scale, y: scale)
        } completion: { (_) in
            toAnimate.transform = CGAffineTransform(scaleX: 1, y: 1)
        }

    }
}
