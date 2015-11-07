//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Carlos Mora on 14/7/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordingInProgress: UILabel!
    //Optional value:
    //var x: Int
    //v = nil
    //Not, x can not be nil
    //var x: Int?
    //x can be nil, or not
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        stopButton.hidden=true
        recordButton.enabled = true
    }
 
    @IBAction func recordAudio(sender: UIButton) { //sender es el trigger
        //IBAction indicates that the action is binded to an Interface element (Interface Builder)
        recordingInProgress.hidden = false
        stopButton.hidden = false
        recordButton.enabled = false
    }

    @IBAction func stopRecording(sender: UIButton) {
        recordingInProgress.hidden = true
        stopButton.hidden = true
        recordButton.enabled = true
    }
}

