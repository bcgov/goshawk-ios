//
//  AdultCallsViewController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-11.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class AdultCallsViewController: CallsViewController {

    @IBOutlet weak var audioChuppVanIsland: UIButton!
    @IBOutlet weak var textViewFour: UITextView!
    @IBOutlet weak var headerThree: UITextView!
    @IBOutlet weak var audioWailSubspecies: UIButton!
    @IBOutlet weak var textViewThree: UITextView!
    @IBOutlet weak var headerTwo: UITextView!
    @IBOutlet weak var audioIntSubspecies: UIButton!
    @IBOutlet weak var audioVanIsland: UIButton!
    @IBOutlet weak var audioHaidaGwaii: UIButton!
    @IBOutlet weak var textViewTwo: UITextView!
    @IBOutlet weak var headerOne: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!

    var audioPlayerforHG = AVAudioPlayer()
    var audioPlayerforVI = AVAudioPlayer()
    var audioPlayerforIS = AVAudioPlayer()
    var audioPlayerforWail = AVAudioPlayer()
    var audioPlayerforChupp = AVAudioPlayer()

    var tapImageOne  = UITapGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()

        tapImageOne.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageView.addGestureRecognizer(tapImageOne)
        let soundVI = Bundle.main.path(forResource: "NOGO Adult alarm (VI)", ofType: "m4a")
        let soundIS = Bundle.main.path(forResource: "NOGO Adult alarm call (Interior)", ofType: "mp3")
        let soundWail = Bundle.main.path(forResource: "NOGO Adult female wail", ofType: "m4a")
        let soundChupp = Bundle.main.path(forResource: "NOGO Adult Chupp call", ofType: "m4a")

        do {
            audioPlayerforHG = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(
                forResource: "NOGO Adult alarm call (HG)", ofType: "mp3")!))
            audioPlayerforHG.prepareToPlay()
            audioPlayerforVI = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundVI!))
            audioPlayerforVI.prepareToPlay()
            audioPlayerforIS = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundIS!))
            audioPlayerforIS.prepareToPlay()
            audioPlayerforWail = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundWail!))
            audioPlayerforWail.prepareToPlay()
            audioPlayerforChupp = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundChupp!))
            audioPlayerforChupp.prepareToPlay()
        } catch {
            print(error)
        }
    }

    @IBAction func audioHaidaPressed(_ sender: Any) {
        if audioPlayerforHG.isPlaying {
            audioPlayerforHG.stop()
        } else {
            audioPlayerforHG.play()
        }
    }

    @IBAction func audioChupp(_ sender: Any) {
        if audioPlayerforChupp.isPlaying {
            audioPlayerforChupp.stop()
        } else {
            audioPlayerforChupp.play()
        }
    }

    @IBAction func audioWail(_ sender: Any) {
        if audioPlayerforWail.isPlaying {
            audioPlayerforWail.stop()
        } else {
            audioPlayerforWail.play()
        }
    }

    @IBAction func audioVanIsland(_ sender: Any) {
        if audioPlayerforVI.isPlaying {
            audioPlayerforVI.stop()
        } else {
            audioPlayerforVI.play()
        }
    }

    @IBAction func audioInterior(_ sender: Any) {
        if audioPlayerforIS.isPlaying {
            audioPlayerforIS.stop()
        } else {
            audioPlayerforIS.play()
        }
    }
}
