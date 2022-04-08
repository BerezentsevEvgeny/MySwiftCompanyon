//
//  Testing.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 08.04.2022.
//

import XCTest
@testable import UnitTestingAppV2


class DataModelTests: XCTestCase {
    
    var sut: DataModel!

    override func setUp() {
        super.setUp()
        sut = DataModel()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testLowersVolumeShouldBeZero()  {
        // given (что дано)
        sut.setVolume(to: -1)
        
        // when (что произошло)
        let volume = sut.volume
        
        // then (что должно получиться)
        XCTAssert(volume == 0, "Lowest value shold be epual 0")
    }
    
    func testHighestVolumeShouldBe100()  {
        // given (что дано)
        sut.setVolume(to: 101)
        
        // when (что произошло)
        let volume = sut.volume
        
        // then (что должно получиться)
        XCTAssert(volume == 100, "Highest value shold be epual 0")
    }
    
    func testNumberOneMustBeGreaterThenNumberTwo() {
        let numberOne = 1
        let numberTwo = 0
        
        let isGreater = sut.greaterThanValue(x: numberOne, y: numberTwo)
        
        XCTAssert(isGreater, "The number one must be greater than number two")
    }
    
    func testNumberOneNotBeGreaterThenNumberTwo() {
        let numberOne = 1
        let numberTwo = 1
        
        let isGreater = sut.greaterThanValue(x: numberOne, y: numberTwo)
        
        XCTAssert(!isGreater, "The number one must be greater than number two")
    }

}
