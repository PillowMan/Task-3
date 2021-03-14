//
//  MainViewModelTests.swift
//  TestSquareTests
//
//  Created by Дмитрий Григорьев on 14.03.2021.
//

import XCTest
@testable import TestSquare

class TestMainViewModelTests: XCTestCase {
    
    var sut: MainViewModel!

    override func setUpWithError() throws {
        try super.setUpWithError()
        let square = Square(color: .green, sideSize: 20, position: Position(x: 0, y: 0))
        self.sut = MainViewModel(square: square)
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testThatRectangleInViewModelNotNil(){
        XCTAssertNotNil(sut.square)
    }

    func testThatRectangleWillChangeSideSize() throws {
        let scaleExpectation = expectation(description: "Double scale expectation")
        sut.setRectangleScale(2){
            scaleExpectation.fulfill()
            
        }
        waitForExpectations(timeout: 5) { (error) in
            XCTAssertEqual(self.sut.square!.sideSize, 40.0)
        }
       
        
    }

}
