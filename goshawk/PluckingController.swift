//
//  PluckingController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-07.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit

class  PluckingController: SignsViewController {
    
    @IBOutlet weak var largeDesc: UITextView!

    @IBOutlet weak var lastLabel: UILabel!
    @IBOutlet weak var lastImage: UIImageView!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var forthImage: UIImageView!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var thirdImage: UIImageView!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstImage: UIImageView!

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
        forthImage.addGestureRecognizer(tapImageFour)
        tapImageFive.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        lastImage.addGestureRecognizer(tapImageFive)
    }
}
