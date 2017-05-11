//
//  InstructionTests.swift
//  NonsenseDirectionsFinal
//
//  Created by Crystal Jade Allen-Washington on 5/10/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import XCTest
@testable import NonsenseDirectionsFinal

class InstructionsTests: XCTestCase {
    
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
    
    func testTurnFromLeft() {
        let result = turn(.left, fromFacing: .north)
        let expected = CardinalDirection.west
        XCTAssertEqual(result, expected)
    }
    
    func testTurnFromRight() {
        let result = turn(.right, fromFacing: .east)
        let expected = CardinalDirection.south
        XCTAssertEqual(result, expected)
    }
}
