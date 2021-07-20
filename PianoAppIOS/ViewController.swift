//
//  ViewController.swift
//  PianoAppIOS
//
//  Created by chekir walid on 20/7/2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player:AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(x: sender.currentTitle!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            sender.alpha = 1.0
        }
        // ! to say we have always a title dont worry we are safe
    }
    
    func playSound(x:String){
        let url = Bundle.main.url(forResource: "Sounds/\(x)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
    
}

