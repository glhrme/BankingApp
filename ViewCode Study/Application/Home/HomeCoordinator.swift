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
        let vm = HomeViewModel()
        vm.coordinator = self
        let vc = HomeViewController(withViewModel: vm)
        self.homeViewController = vc
        self.homeViewModel = vm
        self.navigation.pushViewController(vc, animated: true)
        return self.navigation
    }
}
