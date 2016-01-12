//
//  LoginViewController.swift
//  MyMind
//
//  Created by Muthuraj Muthulingam on 11/30/15.
//  Copyright © 2015 Muthuraj Muthulingam. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {

    override func createUserInterface() {
        self.view.backgroundColor = UIColor.redColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func loginClicked(sender: AnyObject) {
    
        let dashboardViewController:MenuViewController = MenuViewController()
        let newNavigationcontrol:UINavigationController = UINavigationController(rootViewController: dashboardViewController)
         (UIApplication.sharedApplication().delegate as! AppDelegate).window?.rootViewController = newNavigationcontrol
        self.navigationController?.pushViewController(dashboardViewController, animated: true)
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
