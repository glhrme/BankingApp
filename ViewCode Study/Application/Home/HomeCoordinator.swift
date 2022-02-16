//
//  HomeCoordinator.swift
//  BankingApp
//
//  Created by Guilherme de Assis dos Santos on 15/02/22.
//

import UIKit

protocol HomeCoordinator {
    func startHome() -> UIViewController
}

extension CoreCoordinator: HomeCoordinator {
    func startHome() -> UIViewController {
        let vc = HomeViewController()
        self.homeViewController = vc
        self.navigation.pushViewController(vc, animated: true)
        return self.navigation
    }
}
