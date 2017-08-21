//
//  ViewController.swift
//  ChallengeLesson3
//
//  Created by Bathanti on 8/20/17.
//  Copyright © 2017 Bathanti. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var Switch: UISwitch!
    @IBOutlet weak var EnableTxt: UITextField!
    @IBOutlet weak var CacheTxt: UITextField!
    @IBOutlet weak var Zibtxt: UITextField!
   
    let zibdelegate = ZipTextFieldDelegate()
    let cacheDelegate = DollarsTextFieldDelegate()
    override func viewDidLoad() {
        super.viewDidLoad()
        Zibtxt.delegate = zibdelegate
        CacheTxt.delegate = cacheDelegate
        EnableTxt.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        return Switch.isOn
    }
    
    

}

