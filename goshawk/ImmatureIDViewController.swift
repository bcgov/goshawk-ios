//
//  ImmatureIDViewController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-12.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit

class ImmatureIDViewController: FirstViewController {

    @IBOutlet weak var imageSixteen: UIImageView!
    @IBOutlet weak var imageFifteen: UIImageView!
    @IBOutlet weak var imageFourteen: UIImageView!
    @IBOutlet weak var imageThirthteen: UIImageView!
    @IBOutlet weak var imageTwelve: UIImageView!
    @IBOutlet weak var imageEleven: UIImageView!
    @IBOutlet weak var imageTen: UIImageView!
    @IBOutlet weak var imageNine: UIImageView!
    @IBOutlet weak var imageEight: UIImageView!
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
    var tapImageEight =  UITapGestureRecognizer()
    var tapImageNine =  UITapGestureRecognizer()
    var tapImageTen =  UITapGestureRecognizer()
    var tapImageEleven =  UITapGestureRecognizer()
    var tapImageTwelve =  UITapGestureRecognizer()
    var tapImageThirthteen =  UITapGestureRecognizer()
    var tapImageFourteen =  UITapGestureRecognizer()
    var tapImageFifteen =  UITapGestureRecognizer()
    var tapImageSixteen =  UITapGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()
        setImageGesture()
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
        tapImageEight.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageEight.addGestureRecognizer(tapImageEight)
        tapImageNine.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageNine.addGestureRecognizer(tapImageNine)
        tapImageTen.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageTen.addGestureRecognizer(tapImageTen)
        tapImageEleven.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageEleven.addGestureRecognizer(tapImageEleven)
        tapImageTwelve.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageTwelve.addGestureRecognizer(tapImageTwelve)
        tapImageThirthteen.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageThirthteen.addGestureRecognizer(tapImageThirthteen)
        tapImageFourteen.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageFourteen.addGestureRecognizer(tapImageFourteen)
        tapImageFifteen.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageFifteen.addGestureRecognizer(tapImageFifteen)
        tapImageSixteen.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageSixteen.addGestureRecognizer(tapImageSixteen)
    }
}
