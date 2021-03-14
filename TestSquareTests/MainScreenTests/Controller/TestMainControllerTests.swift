//
//  TestSquareTests.swift
//  TestSquareTests
//
//  Created by Дмитрий Григорьев on 13.03.2021.
//

import XCTest
@testable import TestSquare

class TestSquareTests: XCTestCase {
    
    var sut: MainViewController!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = MainViewController()
        let square = Square(color: .blue, sideSize: 20, position: Position(x: 0, y: 0))
        let viewModel = MainViewModel(square: square)
        sut.viewModel = viewModel
        sut.loadViewIfNeeded()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
//        sut = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testMainViewControllerExisting(){
        let viewController = MainViewController()
        XCTAssertNotNil(viewController)
    }
    
    func testSquareLabelIsNotNil() {
        XCTAssertNotNil(sut.squareLabel)
        XCTAssertTrue(sut.squareLabel!.isDescendant(of: sut.view))
    }
    func testSquareLabelHasColor(){
        XCTAssertNotNil(sut.squareLabel?.backgroundColor)
    }
    
    func testSquareLabelSideSize() {
        XCTAssertEqual(sut.squareLabel?.frame.size.width, 20)
        XCTAssertEqual(sut.squareLabel?.frame.size.height, 20)
    }
    
    func testSquareLabelHasEqualSideSize(){
        XCTAssertEqual(sut.squareLabel?.frame.width,sut.squareLabel?.frame.height)
    }
    

    

 

}
