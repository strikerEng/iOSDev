//
//  ViewController.swift
//  PlayVideoApp
//
//  Created by Kire  on 7/10/22.
//

import UIKit
import AVKit


class ViewController: UIViewController {
    
    var player: AVPlayer?
    var vcPlayerController = AVPlayerViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // To make sure the file is copied to the target: https://stackoverflow.com/questions/41775563/bundle-main-pathforresourceoftypeindirectory-returns-nil
        guard let videoFilePath = Bundle.main.path(forResource: "soccerVid", ofType: "mp4") else{
            print("Could not load the video")
            return
        }
        
        let videoFileURL = NSURL(fileURLWithPath: videoFilePath)
        
        player = AVPlayer(url: videoFileURL as URL)
        vcPlayerController.player = player
    }

    @IBAction func playVideo(_ sender: UIButton) {
        present(self.vcPlayerController, animated: true, completion: {
            self.vcPlayerController.player?.play()
        })
    }
    
}

