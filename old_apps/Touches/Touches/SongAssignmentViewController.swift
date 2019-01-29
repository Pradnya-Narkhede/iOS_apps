//
//  SongAssignmentViewController.swift
//  Touches
//
//  Created by Mac on 21/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
import MediaPlayer

class SongAssignmentViewController: UIViewController {

    var player : AVAudioPlayer!

    @IBAction func btnClicked(_ sender: UIButton) {
        player.play()
        var btn = UIButton()
        
//        self.btn.setTitle("Pause",for: UIControlState.normal)
//        self.btn.addTarget(self, action: #selector(Paused),for: .touchUPInside)
        
     
//        btn.setTitle("Paused", for: .normal)
        
    }
    @objc func Paused(){
//        self.btn.setTitle("Pause",for: UIControlState.normal)
//        self.btn.addTarget(self, action: #selector(btnClicked),for: .touchUPInside)
    }
    
    @IBAction func slider(_ sender: UISlider) {
      //player.volume = slider.value
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.url(forResource: "Amplifier", withExtension: ".mp3")
        player = try! AVAudioPlayer(contentsOf: path!)
        player.prepareToPlay()
    }
           

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
