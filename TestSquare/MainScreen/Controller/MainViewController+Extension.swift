//
//  MainViewController+Extension.swift
//  TestSquare
//
//  Created by Дмитрий Григорьев on 14.03.2021.
//

import UIKit

extension MainViewController{
     func createSquareLabel() -> UILabel? {
        guard let square = viewModel?.square, let color = square.color else {return nil}
        let label = UILabel(frame: CGRect(x: CGFloat(square.position.x), y: CGFloat(square.position.y), width: CGFloat(square.sideSize), height: CGFloat(square.sideSize)))
        self.view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0).isActive = true
            self.squareHeightAnchor = label.heightAnchor.constraint(equalToConstant: CGFloat(square.sideSize))
            self.squareWidthAnchor = label.widthAnchor.constraint(equalToConstant: CGFloat(square.sideSize))
            self.squareWidthAnchor?.isActive = true
            self.squareHeightAnchor?.isActive = true
            label.backgroundColor = UIColor(hex: color.rawValue)
//        print(label.bounds.size)
        return label
    }
}
