//
//  Instruction.swift
//  Directions
//
//  Created by Crystal Jade Allen-Washington on 3/31/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

// Start at the given points (where you just landed) and face North.



typealias Location = (x: Int, y: Int)

enum Instruction {
    case left
    case right
}

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
    
    
    


    
} // This function shows the possibilities Cardinal Direction any given user would be facing, based on the user's initial Cardinal Direction, if instructed to turn left or right. This is the turn function.



// Another informant heard you complain about the first set of instructions andhas tried to be simpler about it. Unfortunately, the only change is they provide a cardinal direction instead of a left or right instruction. Write a separate function which will calculate the distance between these instructions. 























