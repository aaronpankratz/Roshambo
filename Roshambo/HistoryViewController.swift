//
//  HistoryViewController.swift
//  Roshambo
//
//  Created by Aaron Pankratz on 11/29/15.
//  Copyright © 2015 Aaron Pankratz. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    var tableViewDataSource: HistoryTableViewDataSource?

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self.tableViewDataSource
    }
}
