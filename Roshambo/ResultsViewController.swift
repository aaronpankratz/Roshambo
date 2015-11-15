//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by Aaron Pankratz on 11/15/15.
//  Copyright © 2015 Aaron Pankratz. All rights reserved.
//


import UIKit

class ResultsViewController: UIViewController {
    
    var yourMove: Move?
    var opponentMove: Move?
    
    @IBOutlet weak var yourMoveImage: UIImageView!
    @IBOutlet weak var oponnentMoveImage: UIImageView!
    @IBOutlet weak var resultImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setImage(yourMoveImage, move: yourMove!)
        self.setImage(oponnentMoveImage, move: opponentMove!)
        self.setImage(resultImage, move1: yourMove!, move2: opponentMove!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playAgain(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func setImage(imageView: UIImageView, move: Move) -> Void {
        switch move {
        case .Rock:
            imageView.image = UIImage(named: "rock")
        case .Paper:
            imageView.image = UIImage(named: "paper")
        case .Scissors:
            fallthrough
        default:
            imageView.image = UIImage(named: "scissors")
        }
    }
    
    func setImage(imageView: UIImageView, move1: Move, move2: Move) {
        
        // tie
        if ((move1 == Move.Rock && move2 == Move.Rock)
            || (move1 == Move.Paper && move2 == Move.Paper)
            || (move1 == Move.Scissors && move2 == Move.Scissors)) {
            imageView.image = UIImage(named: "itsATie")
        }
        
        // rock and paper
        if ((move1 == Move.Rock && move2 == Move.Paper)
            || (move1 == Move.Paper && move2 == Move.Rock)) {
                imageView.image = UIImage(named: "PaperCoversRock")
        }
        
        // rock and scissors
        if ((move1 == Move.Rock && move2 == Move.Scissors)
            || (move1 == Move.Scissors && move2 == Move.Rock)) {
                imageView.image = UIImage(named: "RockCrushesScissors")
        }
        
        // scissors and paper
        if ((move1 == Move.Scissors && move2 == Move.Paper)
            || (move1 == Move.Paper && move2 == Move.Scissors)) {
                imageView.image = UIImage(named: "ScissorsCutPaper")
        }
    }
    
}