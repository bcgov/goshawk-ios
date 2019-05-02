//
//  IDInitialViewController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-05.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit
import WebKit
import AVKit

class IDInitialViewController: FirstViewController, WKUIDelegate {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet var webView: WKWebView!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstImage: UIImageView!

    @IBOutlet var imageTwoTap: UITapGestureRecognizer!
    @IBOutlet var imageOneTap: UITapGestureRecognizer!

    // Create an instance of AVAudioPlayer
    var videoPlayer: AVPlayer!

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

    override func viewDidLoad() {
        super.viewDidLoad()

        imageOneTap.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        firstImage.addGestureRecognizer(imageOneTap)
        imageTwoTap.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        secondImage.addGestureRecognizer(imageTwoTap)

    }

    @IBAction func playVideoButton(_ sender: Any) {
        playVideo(fileName: "id_1", fileExtension: "mp4")
    }
}
