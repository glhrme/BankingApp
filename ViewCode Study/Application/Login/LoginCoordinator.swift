//
//  LoginCoordinator.swift
//  BankingApp
//
//  Created by Guilherme de Assis dos Santos on 15/02/22.
//

import Foundation

protocol LoginCoordinatorProtocol: AnyObject {
    func startLogin()
}

extension CoreCoordinator: LoginCoordinatorProtocol {
    func startLogin() {
        let vc = LoginViewController()
        self.loginViewController = vc
        self.navigation.pushViewController(vc, animated: true)
        self.navigation.viewControllers.remove(at: 0)
    }
}
