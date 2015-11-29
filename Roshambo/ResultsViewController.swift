//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by Aaron Pankratz on 11/15/15.
//  Copyright © 2015 Aaron Pankratz. All rights reserved.
//


import UIKit

class ResultsViewController: UIViewController {
    var match: Match?
    
    @IBOutlet weak var yourMoveImage: UIImageView!
    @IBOutlet weak var oponnentMoveImage: UIImageView!
    @IBOutlet weak var resultImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        match?.playerOneMove.setImage(yourMoveImage)
        match?.playerTwoMove.setImage(oponnentMoveImage)
        match!.setImage(resultImage)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playAgain(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}