//
//  PreyRemainController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-07.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit

class  PreyRemainController: SignsViewController {
    
    @IBOutlet weak var woodpeckerHeader: UITextView!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var thrushers: UITextView!
    @IBOutlet weak var firstDesc: UITextView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var thirdImage: UIImageView!
    @IBOutlet weak var fourthImage: UIImageView!
    @IBOutlet weak var fiveImage: UIImageView!
    @IBOutlet weak var sixthImage: UIImageView!
    @IBOutlet weak var seventhImage: UIImageView!
    @IBOutlet weak var eightImage: UIImageView!
    @IBOutlet weak var nineImage: UIImageView!
    @IBOutlet weak var tenthImage: UIImageView!
    @IBOutlet weak var secondDesc: UITextView!
    @IBOutlet weak var thirdDesc: UITextView!
    @IBOutlet weak var fourthDesc: UITextView!
    @IBOutlet weak var fifthDesc: UITextView!
    @IBOutlet weak var sixthDesc: UITextView!
    @IBOutlet weak var seventhDesc: UITextView!
    @IBOutlet weak var eightDesc: UITextView!
    @IBOutlet weak var ninthDesc: UITextView!
    @IBOutlet weak var lastDesc: UITextView!
    @IBOutlet weak var lastImage: UIImageView!
    @IBOutlet weak var redSquirrelHeader: UITextView!
    @IBOutlet weak var tenthDesc: UITextView!
    @IBOutlet weak var grouseHeader: UITextView!
    @IBOutlet weak var jaysHeader: UITextView!

    var tapImageOne =  UITapGestureRecognizer()
    var tapImageTwo =  UITapGestureRecognizer()
    var tapImageThree =  UITapGestureRecognizer()
    var tapImageFour =  UITapGestureRecognizer()
    var tapImageFive =  UITapGestureRecognizer()
    var tapImageSix =  UITapGestureRecognizer()
    var tapImageSeven =  UITapGestureRecognizer()
    var tapImageEight =  UITapGestureRecognizer()
    var tapImageNine =  UITapGestureRecognizer()
    var tapImageTen =  UITapGestureRecognizer()
    var tapImageEleven =  UITapGestureRecognizer()

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
        fiveImage.addGestureRecognizer(tapImageFive)
        tapImageSix.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        sixthImage.addGestureRecognizer(tapImageSix)
        tapImageSeven.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        seventhImage.addGestureRecognizer(tapImageSeven)
        tapImageEight.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        eightImage.addGestureRecognizer(tapImageEight)
        tapImageNine.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        nineImage.addGestureRecognizer(tapImageNine)
        tapImageTen.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        tenthImage.addGestureRecognizer(tapImageTen)
        tapImageEleven.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        lastImage.addGestureRecognizer(tapImageEleven)
    }
}
