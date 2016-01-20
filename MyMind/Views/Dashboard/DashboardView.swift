//
//  Dashboard.swift
//  MyMind
//
//  Created by Muthuraj Muthulingam on 1/11/16.
//  Copyright © 2016 Muthuraj Muthulingam. All rights reserved.
//

import UIKit

protocol DashboardViewDelegate:baseViewDelegate {
    func dashboardViewItemClicked(dashboardView:DashboardView?,clickedItem:NSString?)
}

class DashboardView: BaseView ,UITableViewDelegate,UITableViewDataSource{
    
    var tableView:UITableView!
    var delegate:DashboardViewDelegate?
    
    override func createViews()  {
        super.createViews()
        
        tableView = UITableView(frame: CGRectMake(0, 0, 100, 500), style: .Plain)
        tableView.delegate = self
        tableView.dataSource = self
        self.addSubview(tableView)
        
        tableView .registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
    }

    // Mark : UITable View Data source and Delegate
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func  tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView .dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = "Test\(indexPath.row)"
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.delegate?.dashboardViewItemClicked(self, clickedItem: "Test\(indexPath.row)")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        tableView.frame = CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))
    }

}
