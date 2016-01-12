//
//  MenuView.swift
//  MyMind
//
//  Created by Muthuraj Muthulingam on 1/12/16.
//  Copyright © 2016 Muthuraj Muthulingam. All rights reserved.
//

import UIKit

class MenuView: UIView,UITableViewDelegate,UITableViewDataSource {
  
    var tableView:UITableView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func createViews() {
        tableView = UITableView()
        tableView.backgroundColor = UIColor.redColor()
        tableView.delegate = self
        tableView.dataSource = self
        self.addSubview(tableView)
        tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "Cell")
        
    }
    override func layoutSubviews() {
         super.layoutSubviews()
        tableView.frame = CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))
    }
    
    // Mark : Tableview delagate and Datasource
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = "Test"
        return cell
    }
}
