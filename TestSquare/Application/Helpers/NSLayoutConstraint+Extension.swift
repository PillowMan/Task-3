//
//  NSLayoutConstraint+Extension.swift
//  TestSquare
//
//  Created by Дмитрий Григорьев on 16.03.2021.
//

import UIKit

extension NSLayoutConstraint {
    
    convenience init(from: UIView, to: UIView?, anchor: LayoutAnchor){
        switch anchor {
        case let .constant(attribute: attribute, relation: relation, constant: constant):
            self.init(item: from, attribute: attribute, relatedBy: relation, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: constant)
        case let .relative(attribute: attribute, relation: relation, relatedTo: relatedTo, multiplier: multiplier, constant: constant):
        self.init(item: from, attribute: attribute, relatedBy: relation, toItem: to, attribute: relatedTo, multiplier: multiplier, constant: constant)
        }
    }
    
    
    
}
