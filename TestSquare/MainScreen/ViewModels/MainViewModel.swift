//
//  MainViewModel.swift
//  TestSquare
//
//  Created by Дмитрий Григорьев on 13.03.2021.
//

import Foundation

class MainViewModel: MainViewModelProtocol {
    
    var square: Box<Square?> = Box(nil)
    
    func setRectangleScale(_ value: Float, completion: @escaping ()->()) {
        square.value?.sideSize *= value
        completion()
    }
    
}
