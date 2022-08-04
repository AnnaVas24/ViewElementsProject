//
//  ViewController.swift
//  ViewElementsProject
//
//  Created by Vasichko Anna on 02.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //mainView.layer.cornerRadius = 12
        
        //setupCorners(for: mainView)
//        mainView.layer.shadowColor = UIColor.black.cgColor
//        mainView.layer.shadowOpacity = 0.5
//        mainView.layer.shadowOffset = CGSize(width: 10, height: 5)
//        mainView.layer.shadowRadius = 10
        
//        mainView.layer.borderColor = UIColor.blue.cgColor
//        mainView.layer.borderWidth = 10
    }
    
    private func setupCorners(for view: UIView) {
        let corners = UIRectCorner(
            arrayLiteral: [
                UIRectCorner.topRight,
                UIRectCorner.topLeft
            ]
        )
        
        let cornerSize = CGSize(width: 20, height: 10)
        
        let maskPath = UIBezierPath(
            roundedRect: view.bounds,
            byRoundingCorners: corners,
            cornerRadii: cornerSize
        )
        
        let maskLayer = CAShapeLayer()
        maskLayer.path = maskPath.cgPath
        view.layer.mask = maskLayer
    }
    
}

