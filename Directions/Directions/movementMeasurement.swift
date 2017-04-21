//
//  movementMeasurement.swift
//  Directions
//
//  Created by Crystal Jade Allen-Washington on 4/2/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//


enum CurrentLocation {
    case x
    case y
}

// func blockCount(value: Int) {
   // let value == (value.xCoordinate + value.yCoordinate)
//}

func MovementByBlocks(locationX: CurrentLocation.x, locationY: CurrentLocation.y) -> Int { // to calculate the number of blocks traveled in one trip.
    if locationX == 8 {
        return 8
    }
    if locationY == 7 {
        return 7
    }
}

// to determine whether the user is traveling in a positive or negative direction, based on an origin of (0,0).
func positiveDirection(cardinal: CardinalDirection) -> CardinalDirection {
    return CardinalDirection.east
    }



// for loop - use for the addition of blocks let return = return + x
// if xCoordinate == (xCoordinate: Int, yCoordinate: Int)
