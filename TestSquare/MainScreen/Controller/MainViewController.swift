//
//  ViewController.swift
//  TestSquare
//
//  Created by Дмитрий Григорьев on 13.03.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    
    var squareLabel: UILabel = UILabel()
    
    var squareHeightAnchor: NSLayoutConstraint?
    var squareWidthAnchor: NSLayoutConstraint?
    
    var viewModel: MainViewModelProtocol?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(squareLabel, anchors: [.centerX(0),.centerY(0)])
        initSquareLabelSizeConstraint()
        self.view.backgroundColor = .cyan
        
        
        viewModel?.square.bind(listener: { (square) in
            guard let square = square, let color = square.color else {return}
            self.squareLabel.backgroundColor = UIColor(hex: color.rawValue)
            self.squareWidthAnchor?.constant = CGFloat(square.sideSize)
            self.squareHeightAnchor?.constant = CGFloat(square.sideSize)
        })
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            guard let viewModel = self.viewModel else {return}
            viewModel.setRectangleScale(2){
                UIView.animate(withDuration: 1) {
                    self.view.layoutIfNeeded()
                }
            }
        }
    }
    
    private func initSquareLabelSizeConstraint(){
        self.squareHeightAnchor = squareLabel.heightAnchor.constraint(equalToConstant: 0)
        self.squareWidthAnchor = squareLabel.widthAnchor.constraint(equalToConstant: 0)
        NSLayoutConstraint.activate([squareWidthAnchor!, squareHeightAnchor!])
    }
    
    
    
    
    
    
    
    
    
}

