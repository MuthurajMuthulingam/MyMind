//
//  MyMindLabel+UILabel.swift
//  MyMind
//
//  Created by Muthuraj Muthulingam on 12/7/15.
//  Copyright © 2015 Muthuraj Muthulingam. All rights reserved.
//

import UIKit

extension UILabel {
    func createMyMindLabel(text:String,textColor:UIColor,textAlignment:NSTextAlignment) -> UILabel{
        let myLabel:UILabel = UILabel()
        myLabel.text = text
        myLabel.textColor = textColor
        myLabel.textAlignment = textAlignment
        return myLabel
    }
    
}

extension UITextField {
    func createMyMinduTextField(text:String,textColor:UIColor,textAlignment:NSTextAlignment) -> UILabel{
        let myTextField:UILabel = UILabel()
        myTextField.text = text
        myTextField.textColor = textColor
        myTextField.textAlignment = textAlignment
        return myTextField
    }
    
}