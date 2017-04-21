//
//  NonsenseDirectionsFinalTests.swift
//  NonsenseDirectionsFinalTests
//
//  Created by Crystal Jade Allen-Washington on 4/21/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import XCTest
@testable import NonsenseDirectionsFinal

class NonsenseDirectionsFinalTests: XCTestCase {
    
    func testTurnLeftfromFacingNorth() {
        let result = turn(.left, fromFacing: .north)
        let expected: CardinalDirection = .west
        XCTAssertEqual(result, expected)
    }
    
    func testTurnRightfromFacingNorth() {
        let result = turn(.right, fromFacing: .north)
        let expected: CardinalDirection = .east
        XCTAssertEqual(result, expected)
    }
    
    func testTurnLeftfromFacingSouth() {
        let result = turn(.left, fromFacing: .south)
        let expected: CardinalDirection = .east
        XCTAssertEqual(result, expected)
    }
    
    func testTurnRightfromFacingSouth() {
        let result = turn(.right, fromFacing: .south)
        let expected: CardinalDirection = .west
        XCTAssertEqual(result, expected)
    }
    
    func testTurnLeftfromFacingEast() {
        let result = turn(.left, fromFacing: .east)
        let expected: CardinalDirection = .north
        XCTAssertEqual(result, expected)
    }
    
    func testTurnRightfromFacingEast() {
        let result = turn(.right, fromFacing: .east)
        let expected: CardinalDirection = .south
        XCTAssertEqual(result, expected)
    }
    
    func testTurnLeftfromFacingWest() {
        let result = turn(.left, fromFacing: .west)
        let expected: CardinalDirection = .south
        XCTAssertEqual(result, expected)
    }
    
    func testTurnRightfromFacingWest() {
        let result = turn(.right, fromFacing: .west)
        let expected: CardinalDirection = .north
        XCTAssertEqual(result, expected)
    }
    
    func testSingleTripBlockCount() {
        let result = singleTripBlockCount((.left, 2), rhsBlockInstruction: (.right, 3))
        let expected = 5
        XCTAssertEqual(result, expected)
    }
    
    func testMultiTripBlockCount() {
        let result = multiTripBlockCount([(.left, 4), (.left, 4), (.left, 5), (.right, 5), (.right, 4), (.left, 4), (.right, 5), (.right, 4), (.right, 2), (.left, 3), (.right, 1), (.right, 1), (.left, 4), (.left, 5), (.right, 3), (.left, 1), (.left, 1), (.right, 4), (.left, 2), (.right, 1), (.right, 4), (.right, 4), (.left, 2), (.left, 2), (.right, 4), (.left, 4), (.right, 1), (.right, 3), (.left, 3), (.left, 1), (.left, 2), (.right, 1), (.right, 5), (.left, 5), (.left, 1), (.left, 1), (.right, 3), (.right, 5), (.left, 1), (.right, 4), (.left, 5), (.right, 5), (.right, 1), (.left, 185), (.right, 4), (.left, 1), (.right, 51), (.left, 2), (.right, 78), (.right, 1), (.left, 4), (.right, 188), (.right, 1), (.left, 5), (.right, 5), (.right, 2), (.right, 3), (.left, 5), (.right, 3), (.right, 4), (.left, 1), (.right, 2), (.right, 2), (.right, 3), (.right, 2), (.left, 5), (.right, 2), (.left, 1), (.left, 4), (.right, 4), (.left, 4), (.right, 2), (.left, 3), (.left, 4), (.right, 2), (.left, 3), (.right, 3), (.right, 2), (.left, 2), (.left, 3), (.right, 4), (.right, 3), (.right, 1), (.left, 4), (.left, 2), (.left, 5), (.right, 4), (.right, 4), (.left, 1), (.right, 1), (.left, 5), (.left, 1), (.right, 3), (.right, 1), (.left, 2), (.right, 1), (.right, 1), (.right, 3), (.left, 4), (.left, 1), (.left, 3), (.right, 2), (.right, 4), (.right, 2), (.left, 2), (.right, 1), (.left, 5), (.right, 3), (.left, 3), (.right, 3), (.left, 1), (.right, 4), (.left, 3), (.left, 3), (.right, 4), (.left, 2), (.left, 1), (.left, 3), (.right, 2), (.right, 3), (.left, 2), (.left, 1), (.right, 4), (.left, 3), (.left, 5), (.left, 2), (.left, 4), (.right, 1), (.left, 4), (.left, 4), (.right, 3), (.right, 5), (.left, 4), (.left, 1), (.left, 1), (.right, 4), (.left, 2), (.right, 5), (.right, 1), (.right, 1), (.right, 2), (.right, 1), (.right, 5), (.left, 1), (.left, 3), (.left, 5), (.right, 2), (.left, 4), (.left, 4), (.left, 5), (.right, 5), (.right, 4), (.left, 4), (.right, 5), (.right, 4), (.right, 2), (.left, 3), (.right, 1), (.right, 1), (.left, 4), (.left, 5), (.right, 3), (.left, 1), (.left, 1), (.right, 4), (.left, 2), (.right, 1), (.right, 4), (.right, 4), (.left, 2), (.left, 2), (.right, 4), (.left, 4), (.right, 1), (.right, 3), (.left, 3), (.left, 1), (.left, 2), (.right, 1), (.right, 5), (.left, 5), (.left, 1), (.left, 1), (.right, 3), (.right, 5), (.left, 1), (.right, 4), (.left, 5), (.right, 5), (.right, 1), (.left, 185), (.right, 4), (.left, 1), (.right, 51)])
        let expected = 1278
        XCTAssertEqual(result, expected)
    }
    
    
    func testPositiveDirection() {
        let _ = positiveDirection([(.left, 4), (.left, 4), (.left, 5)], directionFacing: .left)
        let _: Bool = true
        XCTAssert(true)
    }
    
    func testMove() {
        let result = move(3, .east, (x: 0, y: 0))
        let expected: Location = (x: 3, y: 0)
        XCTAssertTrue(result == expected)
    }
    
    func testTotalBlocksMoved() {
        let result = totalBlocksMoved(originPoint: (x: 0, y: 0), endPoint: (x: 4, y: 7))
        let expected: Int = 11
        XCTAssertTrue(result == expected)
    }

}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  
    
