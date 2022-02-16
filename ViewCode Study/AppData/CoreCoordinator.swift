//
//  CoreCoordinator.swift
//  BankingApp
//
//  Created by Guilherme de Assis dos Santos on 15/02/22.
//

import UIKit

protocol CoreCoordinatorProtocol: AnyObject {
    func start() -> UIViewController
}

class CoreCoordinator {
    let coordinator: CoreCoordinatorProtocol
    let window: UIWindow
    
    init(_ window: UIWindow, _ coordinator: CoreCoordinatorProtocol) {
        self.window = window
        self.coordinator = coordinator
    }
    
    func start() {
        window.rootViewController = coordinator.start()
        window.makeKeyAndVisible()
    }
}
