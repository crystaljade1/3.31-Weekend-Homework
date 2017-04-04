// Figure out the taxi distance in street blocks of the provided mixed-up directions.

// Problem 1: How far is the shortest path to the destination?
// Example: Following R2, L3 leaves you 2 blocks East and 3 blocks North, or 5 blocks away. R2, R2, R2 leaves you 2 blocks due South of your starting position, which is 2 blocks away. R5, L5, R5, R3 leaves you 12 blocks away. How many blocks away is your informant?
// Step 1: Denote starting point & enable ability to measure current location from starting point. 

var walkingDistance = [Int]()

enum Directions {
    case left(Int)
    case right(Int)
}

enum LeftOrRight {
    case left
    case right
}

enum CardinalDirections {
    case north(Int)
    case west(Int)
    case east(Int)
    case south(Int)
}

func walkingDistance(input: LeftOrRight) {
    
}

func distanceFromStartingPoint(input: Int) {
    
}