//
//  Match.swift
//  Roshambo
//
//  Created by Aaron Pankratz on 11/29/15.
//  Copyright © 2015 Aaron Pankratz. All rights reserved.
//

import Foundation
import UIKit

struct Match {
    var playerOneMove: Move;
    var playerTwoMove: Move;
    var result: String;
    
    init(playerOneMove: Move, playerTwoMove: Move) {
        self.playerOneMove = playerOneMove
        self.playerTwoMove = playerTwoMove
        if ((playerOneMove == Move.Rock && playerTwoMove == Move.Rock)
            || (playerOneMove == Move.Paper && playerTwoMove == Move.Paper)
            || (playerOneMove == Move.Scissors && playerTwoMove == Move.Scissors)) {
                self.result = "itsATie"
        }
        
        // rock and paper
        else if ((playerOneMove == Move.Rock && playerTwoMove == Move.Paper)
            || (playerOneMove == Move.Paper && playerTwoMove == Move.Rock)) {
                self.result = "PaperCoversRock"
        }
        
        // rock and scissors
        else if ((playerOneMove == Move.Rock && playerTwoMove == Move.Scissors)
            || (playerOneMove == Move.Scissors && playerTwoMove == Move.Rock)) {
                self.result = "RockCrushesScissors"
        }
        
        // scissors and paper
        else if ((playerOneMove == Move.Scissors && playerTwoMove == Move.Paper)
            || (playerOneMove == Move.Paper && playerTwoMove == Move.Scissors)) {
                self.result = "ScissorsCutPaper"
        }
        else {
            self.result = "unknown"
        }
    }
    
    func setImage(imageView: UIImageView) {
        imageView.image = UIImage(named: self.result)
    }
}