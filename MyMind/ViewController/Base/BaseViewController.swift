//
//  BaseViewController.swift
//  MuthuBaseTest
//
//  Created by Muthuraj Muthulingam on 11/30/15.
//  Copyright © 2015 Muthuraj Muthulingam. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
   
    var menuViewController:MenuViewController!
    var dashboardViewController:DashboardViewController!
    var newNavController:UINavigationController!
    
    override func loadView() {
        super.loadView()
        createUserInterface();
    }
    
    func createUserInterface() {
        menuViewController = MenuViewController()
        menuViewController.view.frame = self.view.frame
        self.view .addSubview(menuViewController.view)
        self.addChildViewController(menuViewController)
        menuViewController.didMoveToParentViewController(self)
        
        dashboardViewController = DashboardViewController()
        newNavController = UINavigationController(rootViewController: dashboardViewController)
        let menuBtn:UIBarButtonItem = UIBarButtonItem(title: "Add", style: UIBarButtonItemStyle.Done, target: self, action: "menuClicked")
        newNavController.navigationItem.leftBarButtonItem = menuBtn
        newNavController.view.frame = self.view.frame
        self.view.addSubview(newNavController.view)
        self.addChildViewController(newNavController)
        newNavController.didMoveToParentViewController(self)
        
    }
    func menuClicked() {
        print("Menu Clicked")
    }
}
