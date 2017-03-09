//
//  ViewController.swift
//  Sound Shaker
//
//  Created by Liz Healy on 1/25/17.
//  Copyright © 2017 netGalaxy Studios. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
            }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {

            var randomNumber = Int(arc4random_uniform(5)) + 1
            
            let audioPath = Bundle.main.path(forResource: "sound\(randomNumber)", ofType: "mp3")
            do {
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            }
            catch {
                //errors
            }

            player.play()
            print(randomNumber)

        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

