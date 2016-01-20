//
//  MainViewController.swift
//  MyMind
//
//  Created by Muthuraj Muthulingam on 1/20/16.
//  Copyright © 2016 Muthuraj Muthulingam. All rights reserved.
//

import UIKit

protocol MainViewControllerDelegate {
    func viewTapped(mainView:MainViewController)
}

class MainViewController: UIViewController,baseViewDelegate {
    var mainDelegate:MainViewControllerDelegate?
    
    override func loadView() {
    super.loadView()
        createUserInterface()
    }
    
    // Mark : Create User Interface
    
    func createUserInterface() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.greenColor()
        self.view.userInteractionEnabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Mark : base View delegate
    
    func viewTapped(baseVie: BaseView) {
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
