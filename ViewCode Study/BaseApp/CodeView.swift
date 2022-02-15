//
//  CodeView.swift
//  ViewCode Study
//
//  Created by Guilherme de Assis dos Santos on 03/02/22.
//

import Foundation

protocol CodeView {
    func buildViewHierrachy()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

extension CodeView {
    func setupView() {
        buildViewHierrachy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}

