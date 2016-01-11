//
//  Dashboard.swift
//  MyMind
//
//  Created by Muthuraj Muthulingam on 1/11/16.
//  Copyright © 2016 Muthuraj Muthulingam. All rights reserved.
//

import UIKit

class Dashboard: BaseView {
    var tableView:UITableView!
    
    override func createViews()  {
        super.createViews()
        
        tableView = UITableView()
        tableView.backgroundColor = UIColor.redColor()
        self.addSubview(tableView)
    }

}
