//
//  NestingController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-05.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit

class NestingController: HabitatViewController {

    @IBOutlet weak var secondHeader: UITextView!
    @IBOutlet weak var lastText: UITextView!
    @IBOutlet weak var fifthImage: UIImageView!
    @IBOutlet weak var textview: UITextView!
    @IBOutlet weak var sixthText: UITextView!
    @IBOutlet weak var fourthImage: UIImageView!
    @IBOutlet weak var fifthText: UITextView!
    @IBOutlet weak var thirdImage: UIImageView!
    @IBOutlet weak var fourthText: UITextView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var thirdText: UITextView!
    @IBOutlet weak var firstHeader: UITextView!
    @IBOutlet weak var secondText: UITextView!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var firstText: UITextView!
    var tapImageOne =  UITapGestureRecognizer()
    var tapImageTwo =  UITapGestureRecognizer()
    var tapImageThree =  UITapGestureRecognizer()
    var tapImageFour =  UITapGestureRecognizer()
    var tapImageFive =  UITapGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()
        setImageGesture()
    }

    private func setImageGesture() {
        tapImageOne.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        firstImage.addGestureRecognizer(tapImageOne)
        tapImageTwo.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        secondImage.addGestureRecognizer(tapImageTwo)
        tapImageThree.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        thirdImage.addGestureRecognizer(tapImageThree)
        tapImageFour.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        fourthImage.addGestureRecognizer(tapImageFour)
        tapImageFive.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        fifthImage.addGestureRecognizer(tapImageFive)
    }
}
