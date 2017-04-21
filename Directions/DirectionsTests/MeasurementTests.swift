//
//  MeasurementTests.swift
//  Directions
//
//  Created by Crystal Jade Allen-Washington on 4/4/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import XCTest

class MeasurementTests: XCTestCase {
    
    func testMeasureMovementByBlocksWest() {
        let result = MovementByBlocks(2)
        let expected: DistanceWalked = -2
        XCTAssertEqual(result, expected)
    }
    
    func testMeasureMovementByBlocksEast() {
        let result = MovementByBlocks(2)
        let expected: DistanceWalked = 2
        XCTAssertEqual(result, expected)
    }
    
    func testMeasureMovementByBlocksNorth() {
        let result = MovementByBlocks(2)
        let expected: DistanceWalked = 2
        XCTAssertEqual(result, expected)
    }
    
    func testMeasureMovementByBlocksSouth() {
        let result = MovementByBlocks(2)
        let expected: DistanceWalked = -2
        XCTAssertEqual(result, expected)
    }
    
}
