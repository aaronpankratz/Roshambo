//
//  File.swift
//  Roshambo
//
//  Created by Aaron Pankratz on 11/15/15.
//  Copyright © 2015 Aaron Pankratz. All rights reserved.
//

import Foundation

enum Move {
    case Rock, Paper, Scissors
    
    static func generateOpponentMove() -> Move {
        let randomInt = arc4random() % 3
        switch randomInt {
        case 0:
            return Move.Rock
        case 1:
            return Move.Paper
        case 2:
            fallthrough
        default:
            return Move.Scissors
        }
    }
}
