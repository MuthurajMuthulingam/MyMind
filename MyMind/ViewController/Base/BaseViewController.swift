//
//  BaseViewController.swift
//  MuthuBaseTest
//
//  Created by Muthuraj Muthulingam on 11/30/15.
//  Copyright © 2015 Muthuraj Muthulingam. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    override func loadView() {
        super.loadView()
        createUserInterface();
    }
    
    func createUserInterface() {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
