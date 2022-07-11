//
//  ViewController.swift
//  PlayAudioApp
//
//  Created by Kire  on 7/10/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    
    func loadAudio() {
        // The path to the audio file
        guard let audioPath = Bundle.main.path(forResource: "audio", ofType: "mp3") else{
            print("Audio does not exist the given path.")
            return
        }
        
        // The specific URL for the audio
        let audioFileURL = NSURL.fileURL(withPath: audioPath)
        
        // Try to load the contents of the audioFileURL in to the AVAudioPlayer
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioFileURL, fileTypeHint: nil)
            
            // How many times the audio will play after it has finished
            audioPlayer.numberOfLoops = 0
        } catch {
            print("AVAudioPlayer error = \(error)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loadAudio()
    }
    
    @IBAction func pauseAudio(_ sender: UIBarButtonItem) {
        audioPlayer.pause()
    }
    
    @IBAction func playAudio(_ sender: UIBarButtonItem) {
        audioPlayer.play()
    }
    
    @IBAction func stopAudio(_ sender: UIBarButtonItem) {
        audioPlayer.stop()
        loadAudio()
    }
    
}

