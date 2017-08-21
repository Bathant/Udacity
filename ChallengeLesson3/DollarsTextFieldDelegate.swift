//
//  DollarsTextFieldDelegate.swift
//  ChallengeLesson3
//
//  Created by Bathanti on 8/20/17.
//  Copyright © 2017 Bathanti. All rights reserved.
//

import UIKit

class DollarsTextFieldDelegate: NSObject ,UITextFieldDelegate{
   
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let oldText = textField.text! as NSString
        var newText = oldText.replacingCharacters(in: range, with: string)
        let newTextString = String(newText)
    
       var newstr = newTextString?.replacingOccurrences(of: "$", with: "")
        newstr = newstr?.replacingOccurrences(of: ".", with: "")
        
       
        // Format the new string
        if let numOfPennies = Int(newstr!) {
            newText = "$" + self.dollarStringFromInt(value: numOfPennies) + "." + self.centsStringFromInt(value: numOfPennies)
        } else {
            newText = "$0.00"
        }
        
        textField.text = newText
        
        return false
    }
    
 
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text!.isEmpty {
            textField.text = "$0.00"
        }
    }
   
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
    
        
        func dollarStringFromInt(value: Int) -> String {
            return String(value / 100)
        }
        
        func centsStringFromInt(value: Int) -> String {
            
            let cents = value % 100
            var centsString = String(cents)
            
            if cents < 10 {
                centsString = "0" + centsString
            }
            
            return centsString
        }
    

    
    
    
}
