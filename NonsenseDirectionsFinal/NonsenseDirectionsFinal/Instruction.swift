//
//  Instruction.swift
//  NonsenseDirectionsFinal
//
//  Created by Crystal Jade Allen-Washington on 4/21/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import Foundation

// Start at the given points (where you just landed) and face North. 

typealias Location = (x: Int, y: Int)


enum Instruction {
    case left
    case right
    case east
    case west
    case north
    case south
}

typealias Direction = Instruction

func turn(_ instruction: Instruction, fromFacing origin: CardinalDirection) -> CardinalDirection {
    if instruction == .right && origin == .north {
        return .east
    } else if instruction == .left && origin == .north {
        return .west
    } else if instruction == .right && origin == .east {
        return .south
    } else if instruction == .left && origin == .east {
        return .north
    } else if instruction == .right && origin == .west {
        return .north
    } else if instruction == .left && origin == .west {
        return .south
    } else if instruction == .right && origin == .south {
        return .west
    } else {
        return .east
    }
    
}

func singleTripBlockCount(_ lhsBlockInstruction: (Instruction, Int), rhsBlockInstruction: (Instruction, Int)) -> Int {
    let blockTotal = lhsBlockInstruction.1 + rhsBlockInstruction.1
    return blockTotal
}

let directions: [(Direction, Int)] = [(.left, 4), (.left, 4), (.left, 5), (.right, 5), (.right, 4), (.left, 4), (.right, 5), (.right, 4), (.right, 2), (.left, 3), (.right, 1), (.right, 1), (.left, 4), (.left, 5), (.right, 3), (.left, 1), (.left, 1), (.right, 4), (.left, 2), (.right, 1), (.right, 4), (.right, 4), (.left, 2), (.left, 2), (.right, 4), (.left, 4), (.right, 1), (.right, 3), (.left, 3), (.left, 1), (.left, 2), (.right, 1), (.right, 5), (.left, 5), (.left, 1), (.left, 1), (.right, 3), (.right, 5), (.left, 1), (.right, 4), (.left, 5), (.right, 5), (.right, 1), (.left, 185), (.right, 4), (.left, 1), (.right, 51), (.left, 2), (.right, 78), (.right, 1), (.left, 4), (.right, 188), (.right, 1), (.left, 5), (.right, 5), (.right, 2), (.right, 3), (.left, 5), (.right, 3), (.right, 4), (.left, 1), (.right, 2), (.right, 2), (.right, 3), (.right, 2), (.left, 5), (.right, 2), (.left, 1), (.left, 4), (.right, 4), (.left, 4), (.right, 2), (.left, 3), (.left, 4), (.right, 2), (.left, 3), (.right, 3), (.right, 2), (.left, 2), (.left, 3), (.right, 4), (.right, 3), (.right, 1), (.left, 4), (.left, 2), (.left, 5), (.right, 4), (.right, 4), (.left, 1), (.right, 1), (.left, 5), (.left, 1), (.right, 3), (.right, 1), (.left, 2), (.right, 1), (.right, 1), (.right, 3), (.left, 4), (.left, 1), (.left, 3), (.right, 2), (.right, 4), (.right, 2), (.left, 2), (.right, 1), (.left, 5), (.right, 3), (.left, 3), (.right, 3), (.left, 1), (.right, 4), (.left, 3), (.left, 3), (.right, 4), (.left, 2), (.left, 1), (.left, 3), (.right, 2), (.right, 3), (.left, 2), (.left, 1), (.right, 4), (.left, 3), (.left, 5), (.left, 2), (.left, 4), (.right, 1), (.left, 4), (.left, 4), (.right, 3), (.right, 5), (.left, 4), (.left, 1), (.left, 1), (.right, 4), (.left, 2), (.right, 5), (.right, 1), (.right, 1), (.right, 2), (.right, 1), (.right, 5), (.left, 1), (.left, 3), (.left, 5), (.right, 2), (.left, 4), (.left, 4), (.left, 5), (.right, 5), (.right, 4), (.left, 4), (.right, 5), (.right, 4), (.right, 2), (.left, 3), (.right, 1), (.right, 1), (.left, 4), (.left, 5), (.right, 3), (.left, 1), (.left, 1), (.right, 4), (.left, 2), (.right, 1), (.right, 4), (.right, 4), (.left, 2), (.left, 2), (.right, 4), (.left, 4), (.right, 1), (.right, 3), (.left, 3), (.left, 1), (.left, 2), (.right, 1), (.right, 5), (.left, 5), (.left, 1), (.left, 1), (.right, 3), (.right, 5), (.left, 1), (.right, 4), (.left, 5), (.right, 5), (.right, 1), (.left, 185), (.right, 4), (.left, 1), (.right, 51)]


func multiTripBlockCount(_ instruction: [(Direction, Int)]) -> Int {
    var multiBlockCount = 0
    
    for (direction, int) in instruction {
        multiBlockCount += int
    }
    
    return multiBlockCount
}

func absoluteValueBlockCount(_ instruction: [(Direction, Int)], fromFacing origin: Instruction) -> Int {
    var number = Int()
    let blocksAway = Int()
    
    
    
    return blocksAway
}

func positiveDirection(_ instruction: [(Direction, Int)], directionFacing: Instruction) -> Bool {
    
    let bool = Bool()
    
    for (direction, int) in instruction {
    
        if direction == .right {
            switch directionFacing {
            case .north:
                return true
            case .south:
                return false
            case .east:
                return true
            case .west:
                return false
            default:
                return true
            }
        } else if direction == .left {
            switch directionFacing {
            case .north:
                return false
            case .south:
                return true
            case .east:
                return false
            case .west:
                return true
            default:
                return true
            }
        }
    }
    
    return bool
}

            

//func trueBlockValue(_ instruction: [(Direction, Int)]) -> Int {
//    
//    let directionFacing: Location
//    let int = Int()
//    var blockValue = 0
//    
//    for (direction, int) in instruction {
//        
//        if positiveDirection(instruction, directionFacing: directionFacing) {
//            let int = int
//        } else {
//            let int = 0 - int
//        }
//        
//        blockValue += int
//    }
//    
//    return blockValue
//}























