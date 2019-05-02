//
//  InitialCallPageController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-08.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit
import WebKit
import AVKit

class InitialCallPageController: CallsViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var thirdTextView: UITextView!
    @IBOutlet weak var secondTextView: UITextView!
    @IBOutlet weak var webVideo: WKWebView!
    @IBOutlet weak var firstTextView: UITextView!

    var tapImageOne = UITapGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()

        tapImageOne.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageView.addGestureRecognizer(tapImageOne)

    }

    @IBAction func buttonPressed(_ sender: Any) {
        if let path =  Bundle.main.path(forResource: "Adult calling", ofType: "MOV") {
            let item = AVPlayerItem(url: URL(fileURLWithPath: path))
            let video = AVPlayer(playerItem: item)
            video.seek(to: CMTimeMake(15, 1))
            item.forwardPlaybackEndTime = CMTimeMake(41, 1)
            let playerViewController = AVPlayerViewController()
            playerViewController.player = video

            present(playerViewController, animated: true, completion: {
                video.play()
            })
        }
    }

    @IBAction func playVideoOne(_ sender: Any) {
        playVideo(fileName: "call", fileExtension: "mp4")
    }

    func playVideo(fileName: String, fileExtension: String) {
        let videoURL: URL!
        videoURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension)

        if videoURL == nil {
            print("Requested Video Cannot be Played")
        } else {
            let videoPlayer = AVPlayer(url: videoURL)
            let playerViewController = AVPlayerViewController()
            playerViewController.player = videoPlayer
            present(playerViewController, animated: true) {
                videoPlayer.play()
            }
        }
    }
}
