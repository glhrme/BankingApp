//
//  BaseUIView.swift
//  ViewCode Study
//
//  Created by Guilherme de Assis dos Santos on 06/02/22.
//

import UIKit

class BaseUIView: UIView {
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
    }
}
