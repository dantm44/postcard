//
//  ViewController.swift
//  PostCard
//
//  Created by Daniel Springer on 9/22/14.
//  Copyright (c) 2014 DS Digital Media, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var enterNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = " \"" + enterMessageTextField.text + "\"" + " - " + enterNameTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
//        just a comment
    }
    // Code will evaluate when we press button
    

}

