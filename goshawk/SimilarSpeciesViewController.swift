//
//  SimilarSpeciesViewController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-11.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit
import AVKit
import AVFoundation

class SimilarSpeciesViewController : CallsViewController {
    
    @IBOutlet weak var imageViewFour: UIImageView!
    @IBOutlet weak var audioSix: UIButton!
    @IBOutlet weak var audioFive: UIButton!
    @IBOutlet weak var imageViewThree: UIImageView!
    @IBOutlet weak var audioFour: UIButton!
    @IBOutlet weak var audioThree: UIButton!
    @IBOutlet weak var headerTwo: UITextView!
    @IBOutlet weak var imageViewTwo: UIImageView!
    @IBOutlet weak var audioTwo: UIButton!
    @IBOutlet weak var audioOne: UIButton!
    @IBOutlet weak var headerOne: UITextView!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var imageViewOne: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    var cooperHawkAlarm = AVAudioPlayer()
    var cooperHawkBegging = AVAudioPlayer()
    var sharpSkinnedHawkAlarm = AVAudioPlayer()
    var sharpSkinnedBegging = AVAudioPlayer()
    var redTailHawkAlarm = AVAudioPlayer()
    var redTailHawkBegging = AVAudioPlayer()
    
    var tapImageOne =  UITapGestureRecognizer()
    var tapImageTwo =  UITapGestureRecognizer()
    var tapImageThree =  UITapGestureRecognizer()
    var tapImageFour = UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setImageGesture()
        let soundCOHAAlarm = Bundle.main.path(forResource: "COHA Adult alarm", ofType: "m4a")
        let soundCOHABegging = Bundle.main.path(forResource: "COHA Juvenile begging", ofType: "m4a")
        let soundSSHAAlarm = Bundle.main.path(forResource: "SSHA Adult alarm", ofType: "m4a")
        let soundSSHABegging = Bundle.main.path(forResource: "SSHA Juvenile begging", ofType: "m4a")
        let soundRedTailAlarm = Bundle.main.path(forResource: "RTHA Adult alarm", ofType: "mp3")
        let soundRedTailBegging = Bundle.main.path(forResource: "RTHA Juvenile begging", ofType: "m4a")
        
        do{
            cooperHawkAlarm = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundCOHAAlarm!))
            cooperHawkAlarm.prepareToPlay()
            cooperHawkBegging = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundCOHABegging!))
            cooperHawkBegging.prepareToPlay()
            sharpSkinnedHawkAlarm = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundSSHAAlarm!))
            sharpSkinnedHawkAlarm.prepareToPlay()
            sharpSkinnedBegging = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundSSHABegging!))
            sharpSkinnedBegging.prepareToPlay()
            redTailHawkAlarm = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundRedTailAlarm!))
            redTailHawkAlarm.prepareToPlay()
            redTailHawkBegging = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundRedTailBegging!))
            redTailHawkBegging.prepareToPlay()
        }
        catch{
            print(error)
        }
    }
    
    private func setImageGesture() {
        tapImageOne.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageViewOne.addGestureRecognizer(tapImageOne)
        tapImageTwo.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageViewTwo.addGestureRecognizer(tapImageTwo)
        tapImageThree.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageViewThree.addGestureRecognizer(tapImageThree)
        tapImageFour.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageViewFour.addGestureRecognizer(tapImageFour)
    }
    
    @IBAction func cooperHawkAlarmPressed(_ sender: Any) {
        if cooperHawkAlarm.isPlaying{
            cooperHawkAlarm.stop()
        }else {
            cooperHawkAlarm.play()
        }
    }
    
    @IBAction func redTailHawkBeggingPressed(_ sender: Any) {
        if redTailHawkBegging.isPlaying{
            redTailHawkBegging.stop()
        }else {
            redTailHawkBegging.play()
        }
    }
    
    @IBAction func redTailHawkAlarmPressed(_ sender: Any) {
        if redTailHawkAlarm.isPlaying{
            redTailHawkAlarm.stop()
        }else {
            redTailHawkAlarm.play()
        }
    }
    
    @IBAction func sharpSHawkBeggingPressed(_ sender: Any) {
        if sharpSkinnedBegging.isPlaying{
            sharpSkinnedBegging.stop()
        }else {
            sharpSkinnedBegging.play()
        }
    }
    
    @IBAction func sharpSHawkAlarmPressed(_ sender: Any) {
        if sharpSkinnedHawkAlarm.isPlaying{
            sharpSkinnedHawkAlarm.stop()
        }else {
            sharpSkinnedHawkAlarm.play()
        }
    }
    
    @IBAction func cooperHawkBeggingPressed(_ sender: Any) {
        if cooperHawkBegging.isPlaying{
            cooperHawkBegging.stop()
        }else {
            cooperHawkBegging.play()
        }
    }
}
