//
//  MenuViewController.swift
//  MyMind
//
//  Created by Muthuraj Muthulingam on 1/12/16.
//  Copyright © 2016 Muthuraj Muthulingam. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    var menuView:MenuView!
    

    override func loadView() {
        super.loadView()
        createViews()
    }
    func createViews() {
        menuView = MenuView(frame: self.view.bounds)
        menuView.backgroundColor = UIColor.greenColor()
        self.view.addSubview(menuView)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
