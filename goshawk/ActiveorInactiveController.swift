//
//  ActiveorInactiveController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-05.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit
import WebKit
import AVKit

class  ActiveorInactiveController: NestsViewController {

    @IBOutlet weak var imageSeven: UIImageView!
    @IBOutlet weak var imageSix: UIImageView!
    @IBOutlet weak var imageFive: UIImageView!
    @IBOutlet weak var imageFour: UIImageView!
    @IBOutlet weak var imageThree: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var imageOne: UIImageView!

    var tapImageOne =  UITapGestureRecognizer()
    var tapImageTwo =  UITapGestureRecognizer()
    var tapImageThree =  UITapGestureRecognizer()
    var tapImageFour =  UITapGestureRecognizer()
    var tapImageFive =  UITapGestureRecognizer()
    var tapImageSix =  UITapGestureRecognizer()
    var tapImageSeven =  UITapGestureRecognizer()
    override func viewDidLoad() {
        super.viewDidLoad()
        setImageGesture()
    }

    @IBAction func buttonAction(_ sender: Any) {
        if let path =  Bundle.main.path(forResource: "Chicks in nest", ofType: "mp4") {
            let item = AVPlayerItem(url: URL(fileURLWithPath: path))
            let video = AVPlayer(playerItem: item)
            video.seek(to: CMTimeMake(40, 1))
            item.forwardPlaybackEndTime = CMTimeMake(65, 1)
            let playerViewController = AVPlayerViewController()
            playerViewController.player = video

            present(playerViewController, animated: true, completion: {
                video.play()
            })
        }
    }

    private func setImageGesture() {
        tapImageOne.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageOne.addGestureRecognizer(tapImageOne)
        tapImageTwo.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageTwo.addGestureRecognizer(tapImageTwo)
        tapImageThree.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageThree.addGestureRecognizer(tapImageThree)
        tapImageFour.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageFour.addGestureRecognizer(tapImageFour)
        tapImageFive.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageFive.addGestureRecognizer(tapImageFive)
        tapImageSix.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageSix.addGestureRecognizer(tapImageSix)
        tapImageSeven.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageSeven.addGestureRecognizer(tapImageSeven)
    }
}
