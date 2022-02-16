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
    
    lazy var loginLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Seu nome de usuário"
        label.textColor = UIColor(named: .baseBlack)
        label.font = UIFont(named: .SFPro, size: 18)
        return label
    }()
    
    lazy var usernameTextField: UITextFieldPadding = {
        var tf = UITextFieldPadding()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.clipsToBounds = true
        tf.layer.cornerRadius = 6
        tf.placeholder = "joaozinho"
        tf.backgroundColor = UIColor(named: .baseSecondGray)
        tf.textColor = UIColor(named: .baseBlack)
        return tf
    }()
    
    init() {
        super.init(frame: .zero)
        self.setupView()
        self.backgroundColor = UIColor(named: .baseGray)
    }
}

extension LoginViewScreen: CodeView {
    func buildViewHierrachy() {
        self.addSubview(logoBank)
        self.addSubview(loginLabel)
        self.addSubview(usernameTextField)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            self.logoBank.topAnchor.constraint(equalTo: self.topAnchor, constant: 32),
            self.logoBank.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.logoBank.heightAnchor.constraint(equalToConstant: 100),
            self.logoBank.widthAnchor.constraint(equalToConstant: 100),
            
            self.loginLabel.topAnchor.constraint(equalTo: self.logoBank.bottomAnchor, constant: 60),
            self.loginLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            self.loginLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            self.usernameTextField.topAnchor.constraint(equalTo: self.loginLabel.bottomAnchor, constant: 8),
            self.usernameTextField.leadingAnchor.constraint(equalTo: self.loginLabel.leadingAnchor, constant: 0),
            self.usernameTextField.trailingAnchor.constraint(equalTo: self.loginLabel.trailingAnchor, constant: 0),
            self.usernameTextField.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    func setupAdditionalConfiguration() {
        //TODO
    }
    
    
}
