//
//  ViewController.swift
//  ViewCode Study
//
//  Created by Guilherme de Assis dos Santos on 03/02/22.
//

import UIKit

class HomeViewController: BaseViewController<HomeViewScreen> {
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.setDelegate(self)
    }
}

extension HomeViewController: HomeViewScreenDelegate {
    func registerTapped() {
        print("register")
    }
    
    func faqTapped() {
        print("faq")
    }
    
    func loginTapped() {
        print("login")
    }
}
