//
//  CoreCoordinator.swift
//  BankingApp
//
//  Created by Guilherme de Assis dos Santos on 15/02/22.
//

import UIKit

protocol CoreCoordinatorProtocol: AnyObject {
    func start(withNavigation navigation: UINavigationController) -> UIViewController
}

class CoreCoordinator {
    //MARK: - Core Propoerties
    let window: UIWindow
    let navigation: UINavigationController
    
    //MARK: - Home Coordinator Properties
    var homeViewController: HomeViewController?
    
    init(_ window: UIWindow) {
        self.window = window
        self.navigation = UINavigationController()
    }
    
    func start() {
        window.rootViewController = self.startHome()
        window.makeKeyAndVisible()
    }
}
