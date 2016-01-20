//
//  MenuViewController.swift
//  MyMind
//
//  Created by Muthuraj Muthulingam on 1/12/16.
//  Copyright © 2016 Muthuraj Muthulingam. All rights reserved.
//

import UIKit

protocol MenuViewControllerDelegate
{
    func selectedMenuItem(menuViewController:MenuViewController,selectedMenu:NSString)
}

class MenuViewController: UIViewController,menuViewDelegate{
    var menuView:MenuView!
    var delegate:MenuViewControllerDelegate!

    override func loadView() {
        super.loadView()
        createViews()
    }
    func createViews() {
        menuView = MenuView(frame: self.view.bounds)
        menuView.delegate = self
        menuView.backgroundColor = UIColor.greenColor()
        self.view.addSubview(menuView)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
// Mark : MenuView Delegate
    func menuClicked(menuView: MenuView, selectedMenu: NSString) {
        print("Selected Menu \(selectedMenu)")
        self.delegate?.selectedMenuItem(self, selectedMenu: selectedMenu)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
