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
         //button1.setTitle("Click", for: .normal)
    }
    
    
    @IBAction func slider(_ sender: UISlider) {
        
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
