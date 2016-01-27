//
//  Dashboard.swift
//  MyMind
//
//  Created by Muthuraj Muthulingam on 1/11/16.
//  Copyright © 2016 Muthuraj Muthulingam. All rights reserved.
//

import UIKit

protocol DashboardViewDelegate:baseViewDelegate {
    func dashboardViewItemClicked(dashboardView:DashboardView?,clickedItem:NSDictionary?)
}

class DashboardView: BaseView,MyMindTableViewDelegate{
    
    var tableView:MyMindTableView!
    var delegate:DashboardViewDelegate?
    
    override func createViews()  {
        super.createViews()
        
        tableView = MyMindTableView(classType: UITableViewCell.classForCoder())
        tableView.delegate = self
        self.addSubview(tableView)
        
        tableView.updateViewWithData(NSArray(array: ["Test","TEst","TEst","TEst","TEst"]))
    }

    // Mark: MyMind Table View Delegate
    
    func myMindTableItemSelected(myMindTableView: MyMindTableView, tableRowClassInsatnce: AnyObject?, selectedItem: NSDictionary?) {
        self.delegate?.dashboardViewItemClicked(self, clickedItem: selectedItem)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        tableView.frame = CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))
    }

}
