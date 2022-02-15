//
//  LoginView.swift
//  ViewCode Study
//
//  Created by Guilherme de Assis dos Santos on 03/02/22.
//

import UIKit
import UIKitLivePreview

final class HomeViewScreen: BaseUIView {
    lazy var contentView: UIView = {
        var uiView = UIView()
        uiView.translatesAutoresizingMaskIntoConstraints = false
        uiView.backgroundColor = UIColor(named: .baseGray)
        return uiView
    }()
    
    lazy var faqButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .clear
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(named: .baseBlack).cgColor
        button.clipsToBounds = true
        button.setTitle("F.A.Q", for: .normal)
        button.setTitleColor(UIColor(named: .baseBlack), for: .normal)
        return button
    }()
    
    lazy var registerButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .clear
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor(named: .baseBlack).cgColor
        button.clipsToBounds = true
        button.setTitle("Abra sua conta", for: .normal)
        button.setTitleColor(UIColor(named: .baseBlack), for: .normal)
        return button
    }()
    
    lazy var loginButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(named: .primary)
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(UIColor(named: .baseWhiteButton), for: .normal)
        return button
    }()
    
    lazy var logoImage: UIImageView = {
        var image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "bankLogo")
        return image
    }()
    
    init() {
        super.init(frame: .zero)
        self.setupView()
        self.backgroundColor = UIColor(named: .baseGray)
    }
}

extension HomeViewScreen: CodeView {
    
    //MARK: - Primeira etapa da construção da UI
    func buildViewHierrachy() {
        self.addSubview(contentView)
        self.contentView.addSubview(logoImage)
        self.contentView.addSubview(loginButton)
        self.contentView.addSubview(registerButton)
        self.contentView.addSubview(faqButton)
    }
    
    //MARK: - Segunda etapa da construção da UI
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            self.contentView.heightAnchor.constraint(equalToConstant: 550),
            self.contentView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            self.contentView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            self.contentView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            
            self.logoImage.bottomAnchor.constraint(equalTo: self.loginButton.topAnchor, constant: -32),
            self.logoImage.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 64),
            self.logoImage.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -64),
            self.logoImage.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 0),
            
            self.loginButton.bottomAnchor.constraint(equalTo: self.registerButton.topAnchor, constant: -36),
            self.loginButton.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16),
            self.loginButton.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16),
            self.loginButton.heightAnchor.constraint(equalToConstant: 48),
            
            self.registerButton.bottomAnchor.constraint(equalTo: self.faqButton.topAnchor, constant: -12),
            self.registerButton.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16),
            self.registerButton.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16),
            self.registerButton.heightAnchor.constraint(equalToConstant: 48),
            
            self.faqButton.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16),
            self.faqButton.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16),
            self.faqButton.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -24),
            self.faqButton.heightAnchor.constraint(equalToConstant: 48)
            
        ])
    }
    
    //MARK: - Última etapa da construção da UI
    func setupAdditionalConfiguration() {
        
    }
}

#if DEBUG && canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, *)
struct MyViewController_Preview: PreviewProvider {
    static var previews: some View {
        HomeViewController()
            .preview()
            .device(.iPhoneSE_2ndGen)
    }
}
#endif
