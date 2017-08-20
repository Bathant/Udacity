//
//  ResultViewController.swift
//  ChallengeLesson2
//
//  Created by Bathanti on 8/20/17.
//  Copyright © 2017 Bathanti. All rights reserved.
//

import UIKit

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
            switch(res)
            {
            case "Paper":
                ImgView.image = UIImage(named : "PaperCoversRock")
                ResTxt.text = "Paper Cover Rock , You WIN!!"
            case "Rock" :
                ImgView.image = UIImage(named : "RockCrushesScissors")
                ResTxt.text = "Rock Crushes Scissors ,You WIN :D"
            case "Secciors":
                ImgView.image = UIImage(named : "ScissorsCutPaper")
                ResTxt.text = "Scissors Cut Paper ,YOU WIN !! "
            default :
                break
                
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
