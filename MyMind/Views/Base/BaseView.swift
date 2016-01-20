//
//  BaseView.swift
//  MuthuBaseTest
//
//  Created by Muthuraj Muthulingam on 11/30/15.
//  Copyright © 2015 Muthuraj Muthulingam. All rights reserved.
//

import UIKit

protocol baseViewDelegate {
    func viewTapped(baseVie:BaseView)
}

class BaseView: UIView {
    
    var baseDelegate:baseViewDelegate?
    var overlayView:UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        createViews()
    }
    func createViews() {
        overlayView = UIView()
        overlayView.backgroundColor = UIColor.purpleColor()
        
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "tapped")
        overlayView.addGestureRecognizer(tap)
        
        self.addSubview(overlayView)
    }
    func tapped() {
        self.baseDelegate?.viewTapped(self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        overlayView.frame = CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))
    }
}
