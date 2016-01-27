//
//  MyMindTableView.swift
//  MyMind
//
//  Created by Muthuraj Muthulingam on 1/21/16.
//  Copyright © 2016 Muthuraj Muthulingam. All rights reserved.
//

import UIKit

protocol MyMindTableViewDelegate {
    func myMindTableItemSelected(myMindTableView:MyMindTableView,tableRowClassInsatnce:AnyObject?,selectedItem:NSDictionary?)
}

class MyMindTableView: UIView,UITableViewDelegate,UITableViewDataSource {
    
    var classType:AnyClass!
    var tableView:UITableView!
    var tableData:NSArray!
    var delegate:MyMindTableViewDelegate?
    
    init (classType:AnyClass?) {
        self.classType = classType
        super.init(frame: CGRectMake(0, 0, 100, 200))
        createViews()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
  
    // Mark: Create views
    func createViews() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.redColor()
        self.addSubview(tableView)
        
        tableData = NSArray()
        
        tableView.registerClass(classType!, forCellReuseIdentifier: "cell")
        
    }
    
    // Mark : update View with data
    
    func updateViewWithData(data:NSArray?) {
        if data != nil {
            tableData = data
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                self.tableView.reloadData()
            })
        }
    }
    
    // Mark: TableView Delegates and Datasources
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
         return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = "cell \(tableData[indexPath.row])"
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell:AnyObject = tableView.cellForRowAtIndexPath(indexPath)!
        self.delegate?.myMindTableItemSelected(self, tableRowClassInsatnce: cell, selectedItem: tableData[indexPath.row] as? NSDictionary)
    }
    
    // Mark : Layout the Views
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        tableView.frame = CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))
        
    }

}
