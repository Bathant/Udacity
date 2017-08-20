//
//  ViewController.swift
//  ChallengeLesson2
//
//  Created by Bathanti on 8/20/17.
//  Copyright © 2017 Bathanti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp : String?
    @IBAction func PaperBTN(_ sender: Any) {
        temp = "Paper"
        var controller = ResultViewController()
        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        controller.Result = temp
       present(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func Rock(_ sender: Any) {
        temp = "Rock"
        performSegue(withIdentifier: "resSeg", sender: self)
    }
    
    @IBAction func SecciorsBtn(_ sender: Any) {
        
        temp = "Secciors"
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let con = segue.destination as! ResultViewController
        con.Result = temp!
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

