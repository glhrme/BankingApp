//
//  HomeCoordinator.swift
//  BankingApp
//
//  Created by Guilherme de Assis dos Santos on 15/02/22.
//

import UIKit

class HomeCoordinator: CoreCoordinatorProtocol {
    var homeViewController: HomeViewController?
    
    func start() -> UIViewController {
        let vc = HomeViewController()
        self.homeViewController = vc
        return vc
    }
}
