//
//  File.swift
//  Directions
//
//  Created by Crystal Jade Allen-Washington on 3/31/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import XCTest
@testable import Directions



class LocationTests : XCTestCase {
    func testMeasureMovementByBlocks(.east(-2), .north(4)) {
        let result = [.north, (x: -4, y: 0)]
        let expected: 6
        XCTAssertEqual(result, expected)
    }
    
    
    func testBlocksWalked() {
        let result = [4 + 2]
        let expected = 6
        XCTAssertEqual(result, expected)
    }
    
    func coordinatePoints(xCoordinate: Int, yCoordinate: Int) {
        let xCoordinate = (.8)
        let yCoordinate = (.4)
        let result = (xCoordinate: 8, yCoordinate: 4)
        let expected = (8, 4)
        XCTAssertNil("8", "4")
    }
        




}
