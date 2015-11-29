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
    var resultImageName: String;
    var matchDetail: String;
    var playerOneResult: String;
    
    init(playerOneMove: Move, playerTwoMove: Move) {
        self.playerOneMove = playerOneMove
        self.playerTwoMove = playerTwoMove
        self.matchDetail = "\(playerOneMove) vs \(playerTwoMove)"
        
        // determine the result image and if player one won|lost|tied
        if ((playerOneMove == Move.Rock && playerTwoMove == Move.Rock)
            || (playerOneMove == Move.Paper && playerTwoMove == Move.Paper)
            || (playerOneMove == Move.Scissors && playerTwoMove == Move.Scissors)) {
                self.resultImageName = "itsATie"
                self.playerOneResult = "Tie"
        }
        
        // rock and paper
        else if ((playerOneMove == Move.Rock && playerTwoMove == Move.Paper)
            || (playerOneMove == Move.Paper && playerTwoMove == Move.Rock)) {
                self.resultImageName = "PaperCoversRock"
                self.playerOneResult = playerOneMove == Move.Paper ? "Win" : "Loss"
        }
        
        // rock and scissors
        else if ((playerOneMove == Move.Rock && playerTwoMove == Move.Scissors)
            || (playerOneMove == Move.Scissors && playerTwoMove == Move.Rock)) {
                self.resultImageName = "RockCrushesScissors"
                self.playerOneResult = playerOneMove == Move.Rock ? "Win" : "Loss"
        }
        
        // scissors and paper
        else if ((playerOneMove == Move.Scissors && playerTwoMove == Move.Paper)
            || (playerOneMove == Move.Paper && playerTwoMove == Move.Scissors)) {
                self.resultImageName = "ScissorsCutPaper"
                self.playerOneResult = playerOneMove == Move.Scissors ? "Win" : "Loss"
        }
        else {
            self.resultImageName = "unknown"
            self.playerOneResult = "unknown"
        }
    }
    
    func setImage(imageView: UIImageView) {
        imageView.image = UIImage(named: self.resultImageName)
    }
}