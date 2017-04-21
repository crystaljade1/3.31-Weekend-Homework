//
//  Move.swift
//  NonsenseDirectionsFinal
//
//  Created by Crystal Jade Allen-Washington on 4/21/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import Foundation

enum CurrentLocation {
    case x
    case y
}


func move(_ blocksToTravel: Int, _ fromFacing: CardinalDirection, _ from: Location) -> Location {
    switch fromFacing {
    case .north:
        return(from.x, from.y + blocksToTravel)
    case .south:
        return(from.x, from.y - blocksToTravel)
    case .east:
        return(from.x + blocksToTravel, from.y)
    case .west:
        return(from.x - blocksToTravel, from.y)
    }
}
    

func totalBlocksMoved(originPoint: Location, endPoint: Location) -> Int {
    let pointX = abs(endPoint.x - originPoint.x)
    let pointY = abs(endPoint.y - originPoint.y)
    let blocksMoved = pointX + pointY
    
    return blocksMoved
}
