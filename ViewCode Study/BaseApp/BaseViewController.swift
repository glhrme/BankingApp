//
//  BaseViewController.swift
//  ViewCode Study
//
//  Created by Guilherme de Assis dos Santos on 03/02/22.
//

import UIKit

class BaseViewController<CustomView: UIView>: UIViewController {
    var customView: CustomView! {
        return self.view as? CustomView
    }
    
    override func loadView() {
        self.view = CustomView()
    }
}
