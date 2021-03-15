//
//  LayoutAnchor.swift
//  TestSquare
//
//  Created by Дмитрий Григорьев on 15.03.2021.
//

import UIKit

enum LayoutAnchor {
    case relative(attribute: NSLayoutConstraint.Attribute, relation: NSLayoutConstraint.Relation, relatedTo: NSLayoutConstraint.Attribute, multiplier: CGFloat, constant: CGFloat)
    case constant(attribute: NSLayoutConstraint.Attribute, relation: NSLayoutConstraint.Relation, constant: CGFloat)
}

extension LayoutAnchor {
    static let centerX = relative(attribute: .centerX, relation: .equal, relatedTo: .centerX)
    static let centerY = relative(attribute: .centerY, relation: .equal, relatedTo: .centerY)
    static let width = constant(attribute: .width, relation: .equal)
    static let height = constant(attribute: .height, relation: .equal)
    
    
    static func relative(attribute: NSLayoutConstraint.Attribute, relation: NSLayoutConstraint.Relation, relatedTo: NSLayoutConstraint.Attribute) -> (CGFloat) -> LayoutAnchor {
        return {constant in
            .relative(attribute: attribute, relation: relation, relatedTo: relatedTo, multiplier: 1, constant: constant)
        }
    }
    
    
    static func constant(attribute: NSLayoutConstraint.Attribute, relation: NSLayoutConstraint.Relation) -> (CGFloat) -> LayoutAnchor{
        return {constant in .constant(attribute: attribute, relation: relation, constant: constant)}
    }
//    static func constant()
    
}


