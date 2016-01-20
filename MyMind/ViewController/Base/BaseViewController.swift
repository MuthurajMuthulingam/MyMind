//
//  BaseViewController.swift
//  MuthuBaseTest
//
//  Created by Muthuraj Muthulingam on 11/30/15.
//  Copyright © 2015 Muthuraj Muthulingam. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController,MenuViewControllerDelegate,MainViewControllerDelegate {
   
    var menuViewController:MenuViewController!
    var dashboardViewController:DashboardViewController!
    var newNavController:UINavigationController!
    var startXPos:Float!
    
    override func loadView() {
        super.loadView()
        createUserInterface();
    }
    
    func createUserInterface() {
        
        startXPos = 0
        
        menuViewController = MenuViewController()
        menuViewController.delegate = self
        menuViewController.view.frame = self.view.frame
        self.view .addSubview(menuViewController.view)
        self.addChildViewController(menuViewController)
        menuViewController.didMoveToParentViewController(self)
        
        dashboardViewController = DashboardViewController()
        dashboardViewController.mainDelegate = self
        newNavController = UINavigationController(rootViewController: dashboardViewController)
        let menuBtn:UIBarButtonItem = UIBarButtonItem(title: "Add", style: UIBarButtonItemStyle.Done, target: self, action: "menuClicked")
        newNavController.navigationItem.leftBarButtonItem = menuBtn
        newNavController.view.frame = self.view.frame
        self.view.addSubview(newNavController.view)
        self.addChildViewController(newNavController)
        newNavController.didMoveToParentViewController(self)
        
    }
    
    func viewTapped(mainView: MainViewController) {
        print("View Tapped in Base View Controller")
        tapped()
    }
    
    func tapped() {
        if(startXPos == 0) {
            startXPos = Float(self.view.frame.size.width*0.8)
        } else {
            startXPos = 0
        }
        
        animateMenu()
    }
    
    // Mark: Menu Item Clicked
    
    func selectedMenuItem(menuViewController: MenuViewController, selectedMenu: NSString) {
        let viewController:UIViewController = UIViewController(nibName: nil, bundle: nil)
        viewController.view.backgroundColor = UIColor.redColor()
        newNavController.viewControllers = NSArray(object: viewController) as! [UIViewController]
        tapped()
        
    }
    
    // Mark: Show/Hide Menu
    
    func animateMenu() {
        UIView.animateWithDuration(0.2, delay: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.newNavController.view.frame = CGRectMake(CGFloat(self.startXPos), 0, self.view.frame.size.width, self.view.frame.size.height)
            }, completion: nil)
    }
    
    func menuClicked() {
        print("Menu Clicked")
    }
}
