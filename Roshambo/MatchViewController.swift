//
//  ViewController.swift
//  Roshambo
//
//  Created by Aaron Pankratz on 11/15/15.
//  Copyright © 2015 Aaron Pankratz. All rights reserved.
//

import UIKit

class MatchViewController: UIViewController {

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
        if segueIdentifier == "rock"
        || segueIdentifier == "paper"
        || segueIdentifier == "scissors" {
            let controller = segue.destinationViewController as! ResultsViewController
            switch segueIdentifier {
            case "rock":
                controller.yourMove = Move.Rock
            case "paper":
                controller.yourMove = Move.Paper
            case "scissors":
                fallthrough
            default:
                controller.yourMove = Move.Scissors
            }
            controller.opponentMove = Move.generateOpponentMove()
        }
    }
}