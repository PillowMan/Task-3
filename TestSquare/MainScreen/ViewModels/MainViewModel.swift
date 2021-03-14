//
//  MainViewModel.swift
//  TestSquare
//
//  Created by Дмитрий Григорьев on 13.03.2021.
//

import Foundation

class MainViewModel: MainViewModelProtocol {
    
    var square: Rectangle?
    
    init(square: Rectangle?) {
        self.square = square
    }
    
    func setRectangleScale(_ value: Float, completion: @escaping ()->()) {
        square?.sideSize *= value
            completion()
        }
    
}
