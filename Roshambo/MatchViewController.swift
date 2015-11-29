//
//  ViewController.swift
//  Roshambo
//
//  Created by Aaron Pankratz on 11/15/15.
//  Copyright © 2015 Aaron Pankratz. All rights reserved.
//

import UIKit

class MatchViewController: UIViewController {
    
    @IBOutlet weak var historyButton: UIBarButtonItem!
    var history = [Match]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let segueIdentifier = segue.identifier!
        if (segueIdentifier == "rock"
            || segueIdentifier == "paper"
            || segueIdentifier == "scissors") {
            let controller = segue.destinationViewController as! ResultsViewController
            var playerOneMove: Move
            switch segueIdentifier {
            case "rock":
                playerOneMove = Move.Rock
            case "paper":
                playerOneMove = Move.Paper
            case "scissors":
                fallthrough
            default:
                playerOneMove = Move.Scissors
            }
            let playerTwoMove = Move.generateOpponentMove()
            let match = Match(playerOneMove: playerOneMove, playerTwoMove: playerTwoMove)
            controller.match = match
            self.history.append(match)
        }
        else if segueIdentifier == "history" {
            let controller = segue.destinationViewController as! HistoryViewController
            controller.history = self.history
        }
    }
}