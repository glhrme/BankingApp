//
//  LoginView.swift
//  ViewCode Study
//
//  Created by Guilherme de Assis dos Santos on 03/02/22.
//

import UIKit

final class HomeViewScreen: BaseUIView {
    init() {
        super.init(frame: .zero)
        self.setupView()
        self.backgroundColor = .red
    }
}

extension HomeViewScreen: CodeView {
    
    //MARK: - Primeira etapa da construção da UI
    func buildViewHierrachy() {
        self.backgroundColor = .red
    }
    
    //MARK: - Segunda etapa da construção da UI
    func setupConstraints() {

    }
    
    //MARK: - Última etapa da construção da UI
    func setupAdditionalConfiguration() {
        
    }
}
