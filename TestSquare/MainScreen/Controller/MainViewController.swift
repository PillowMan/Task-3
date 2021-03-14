//
//  ViewController.swift
//  TestSquare
//
//  Created by Дмитрий Григорьев on 13.03.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    
    var squareLabel: UILabel?
    
    var squareHeightAnchor: NSLayoutConstraint?
    var squareWidthAnchor: NSLayoutConstraint?
    
    var viewModel: MainViewModelProtocol?


    override func viewDidLoad() {
        super.viewDidLoad()
        squareLabel = createSquareLabel()
        self.view.backgroundColor = .cyan
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else {return}
            viewModel.setRectangleScale(2){
                guard let square = viewModel.square else {return}
                self.squareHeightAnchor?.constant = CGFloat(square.sideSize)
                self.squareWidthAnchor?.constant = CGFloat(square.sideSize)
                UIView.animate(withDuration: 2) {
                    self.squareLabel?.layoutIfNeeded()
                }
            }
        
       
    }
    
    
   
    
   


}

