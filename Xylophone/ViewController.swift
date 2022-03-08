//
//  ViewController.swift
//  Xylophone
//
//  Created by Аркадий Рожков on 08.03.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(note: sender.currentTitle!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2) {sender.alpha = 1}
    }
    
    func playSound(note:String){
        let url = Bundle.main.url(forResource: note, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
        
    }
}

