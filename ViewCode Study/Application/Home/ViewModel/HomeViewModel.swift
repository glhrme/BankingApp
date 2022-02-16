//
//  HomeViewModel.swift
//  BankingApp
//
//  Created by Guilherme de Assis dos Santos on 15/02/22.
//

import Foundation

class HomeViewModel {
    weak var coordinator: LoginCoordinatorProtocol?
    
    func goToLogin() {
        print("login tapped")
        self.coordinator?.startLogin()
    }
}
