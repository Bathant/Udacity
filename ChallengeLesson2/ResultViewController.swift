//
//  ResultViewController.swift
//  ChallengeLesson2
//
//  Created by Bathanti on 8/20/17.
//  Copyright © 2017 Bathanti. All rights reserved.
//

import UIKit
enum Choices : String
{
    case paper = "Paper"
    case rock = "Rock"
    case secciors = "Scissors"
    
    static func generatechoice () -> Choices
    {
        var choices = ["Paper","Rock","Scissors"]
        let index = Int(arc4random_uniform(3))
        return Choices(rawValue: choices[index])!
    }
}

    

class ResultViewController: UIViewController {
    @IBOutlet weak var ImgView: UIImageView!
    
    
    @IBOutlet weak var ResTxt: UILabel!
   
 
    var Result : String?
   
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    override func viewWillAppear(_ animated: Bool) {
        if Result != nil
        {
            let res = Result!
            let computer = Choices.generatechoice()
            let user = Choices(rawValue : res)!
            
            switch(user,computer)
            {
            case( .rock , .secciors),(.paper , .rock) , (.secciors,.paper):
                ImgView.image = UIImage(named : "\(user.rawValue)-\(computer.rawValue)")
                ResTxt.text = "You WIN by \(user.rawValue) vs \(computer.rawValue) :D"
                
            case let (user,opp) where user == opp :
                ImgView.image = UIImage(named : "itsATie")
                ResTxt.text = "<<<<<<it's a tie >>>>>"
             

            default:
                ImgView.image = UIImage(named : "\(computer.rawValue)-\(user.rawValue)")
                ResTxt.text = "You Lose by \(user.rawValue) vs \(computer.rawValue) :("

            }
            
            
        }
    }

    @IBAction func PlayAgainBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        print("Dimissed !! ")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
