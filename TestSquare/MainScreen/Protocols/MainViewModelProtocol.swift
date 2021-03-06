//
//  MainViewModelProtocol.swift
//  TestSquare
//
//  Created by Дмитрий Григорьев on 13.03.2021.
//

import Foundation

protocol MainViewModelProtocol {
    var square: Box<Square?> {get set}
    func setRectangleScale(_ value: Float, completion: @escaping ()->())
}
