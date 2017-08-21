//
//  ZipTextFieldDelegate.swift
//  ChallengeLesson3
//
//  Created by Bathanti on 8/20/17.
//  Copyright © 2017 Bathanti. All rights reserved.
//

import Foundation
import UIKit
class ZipTextFieldDelegate : NSObject , UITextFieldDelegate
{
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let str = textField.text
        if (str?.characters.count)! > 4{
            
        return false
        }
        else{
        return true
        }
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    
}
