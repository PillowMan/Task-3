//
//  UIView+Extension.swift
//  TestSquare
//
//  Created by Дмитрий Григорьев on 15.03.2021.
//

import UIKit

extension UIView {
    
    func addSubview(_ subview: UIView, anchors: [LayoutAnchor]){
        subview.translatesAutoresizingMaskIntoConstraints = false
        addSubview(subview)
        subview.activate(anchors: anchors, relativeTo: self)
    }
    
    func activate(anchors: [LayoutAnchor], relativeTo item: UIView? = nil){
        let constraints = anchors.map{NSLayoutConstraint(from: self, to: item, anchor: $0)}
        NSLayoutConstraint.activate(constraints)
    }
    
}
