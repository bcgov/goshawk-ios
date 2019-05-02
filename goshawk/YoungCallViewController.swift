//
//  YoungCallViewController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-11.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class YoungCallViewController: CallsViewController {

    @IBOutlet weak var audioAlarmCall: UIButton!
    @IBOutlet weak var subTextViewTwo: UITextView!
    @IBOutlet weak var headerTwo: UITextView!
    @IBOutlet weak var audioChuppVanIsland: UIButton!
    @IBOutlet weak var subTextViewOne: UITextView!
    @IBOutlet weak var headerOne: UITextView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!

    var audioPlayerforalarm = AVAudioPlayer()
    var audioPlayerforbegging = AVAudioPlayer()
    var tapImageOne = UITapGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()

        tapImageOne.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageView.addGestureRecognizer(tapImageOne)

        let soundalarm = Bundle.main.path(forResource: "NOGO Juvenile alarm", ofType: "mp3")
        let soundbegging = Bundle.main.path(forResource: "NOGO Juvenile begging", ofType: "mp3")

        do {
            audioPlayerforalarm = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundalarm!))
            audioPlayerforbegging = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundbegging!))
        } catch {
            print(error)
        }
    }

    @IBAction func beggingCallPressed(_ sender: Any) {
        if audioPlayerforbegging.isPlaying {
            audioPlayerforbegging.stop()
        } else {
            audioPlayerforbegging.play()
        }
    }

    @IBAction func alarmCallPressed(_ sender: Any) {
        if audioPlayerforalarm.isPlaying {
            audioPlayerforalarm.stop()
        } else {
            audioPlayerforalarm.play()
        }
    }
}
