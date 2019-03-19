//
//  ViewController.swift
//  Tictactoe
//
//  Created by Aggarwal Sagrika on 3/19/19.
//  Copyright © 2019 Aggarwal Sagrika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var login: UIView!
     @IBOutlet weak var play: UIView!
     var activePlayer = 1 // cross
    
    @IBAction func Switch_Screen(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            play.isHidden = true
            login.isHidden = false
            
        }
        else if sender.selectedSegmentIndex == 1
        {
            login.isHidden = true
            play.isHidden = false
            
        }
    }
    
    
    
    @IBAction func Cross_Naught_Action(_ sender: UIButton) {
        
        if activePlayer == 1 {
            
            sender.setImage(UIImage(named : "cross.png"), for: UIControlState())
            activePlayer = 2
            
        }
        else if activePlayer == 2 {
            
            sender.setImage(UIImage(named : "naught-2.png"), for: UIControlState())
            activePlayer = 1
            
        }
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

