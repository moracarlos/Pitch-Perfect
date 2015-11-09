//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Carlos Mora on 8/11/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        if var path = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
            audioPlayer = AVAudioPlayer()
            var filePath = NSURL.fileURLWithPath(path)
            audioPlayer = AVAudioPlayer(contentsOfURL: filePath, error: nil)
            audioPlayer.enableRate = true

        }else{
            println("Error obtaining the resource")
        }
        println("Ready")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func playSound(sender: UIButton) {
        //Play audio slooooooowly here :)
        audioPlayer.stop()
        audioPlayer.currentTime = 0.0
        audioPlayer.rate = 0.5
        audioPlayer.play()
    }
    
    @IBAction func playFastSound(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0.0
        audioPlayer.rate = 2.0
        audioPlayer.play()
    }
    
    @IBAction func stopAllSounds(sender: UIButton) {
        audioPlayer.stop()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
