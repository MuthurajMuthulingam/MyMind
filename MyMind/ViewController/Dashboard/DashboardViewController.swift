//
//  DashboardViewController.swift
//  MyMind
//
//  Created by Muthuraj Muthulingam on 1/11/16.
//  Copyright © 2016 Muthuraj Muthulingam. All rights reserved.
//

import UIKit

protocol DashboardViewControlerDelegate:MainViewControllerDelegate {
    
}

class DashboardViewController: MainViewController,DashboardViewDelegate {
    
    var dashboardView:DashboardView!
    
    override func createUserInterface() {
        //super.createUserInterface()
        
        dashboardView = DashboardView()
        dashboardView.delegate = self
        dashboardView.baseDelegate = self
        self.view.addSubview(dashboardView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.greenColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
         super.viewWillLayoutSubviews()
        dashboardView.frame = CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))
    }
    
// Mark : Dashboard View Delagates
    
    func dashboardViewItemClicked(dashboardView: DashboardView?, clickedItem: NSDictionary?) {
        self.mainDelegate?.viewTapped(self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
