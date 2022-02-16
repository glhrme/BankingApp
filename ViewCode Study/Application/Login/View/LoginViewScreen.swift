//
//  LoginViewScreen.swift
//  BankingApp
//
//  Created by Guilherme de Assis dos Santos on 15/02/22.
//

import UIKit

class LoginViewScreen: BaseUIView {
    lazy var logoBank: UIImageView = {
        var image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "bankLogo")
        return image
    }()
    
    lazy var labelLogin: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Seu nome de usuário"
        label.textColor = UIColor(named: .baseBlack)
        label.font = UIFont(named: .SFPro, size: 18)
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        self.setupView()
        self.backgroundColor = UIColor(named: .baseGray)
    }
}

extension LoginViewScreen: CodeView {
    func buildViewHierrachy() {
        self.addSubview(labelLogin)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            self.labelLogin.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.labelLogin.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
    
    func setupAdditionalConfiguration() {
        //TODO
    }
    
    
}
