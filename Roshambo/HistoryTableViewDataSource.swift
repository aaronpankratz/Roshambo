//
//  HistoryTableViewDataSource.swift
//  Roshambo
//
//  Created by Aaron Pankratz on 11/29/15.
//  Copyright © 2015 Aaron Pankratz. All rights reserved.
//

import Foundation
import UIKit

class HistoryTableViewDataSource: NSObject, UITableViewDataSource {
    var history: [Match]
    
    init(history: [Match]) {
        self.history = history
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.history.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("historyCell")
        let match = self.history[indexPath.row]
        
        match.setImage((cell?.imageView)!)
        cell?.textLabel?.text = match.playerOneResult
        if let detailTextLabel = cell?.detailTextLabel {
            detailTextLabel.text = match.matchDetail
        }        
        return cell!
    }
}