//
//  SpeciesIDViewController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-13.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit

class SpeciesIDViewController: FirstViewController {

    @IBOutlet weak var image36: UIImageView!
    @IBOutlet weak var image35: UIImageView!
    @IBOutlet weak var image34: UIImageView!
    @IBOutlet weak var image33: UIImageView!
    @IBOutlet weak var image32: UIImageView!
    @IBOutlet weak var image31: UIImageView!
    @IBOutlet weak var image30: UIImageView!
    @IBOutlet weak var image29: UIImageView!
    @IBOutlet weak var image28: UIImageView!
    @IBOutlet weak var image27: UIImageView!
    @IBOutlet weak var image26: UIImageView!
    @IBOutlet weak var image25: UIImageView!
    @IBOutlet weak var image24: UIImageView!
    @IBOutlet weak var image23: UIImageView!
    @IBOutlet weak var image22: UIImageView!
    @IBOutlet weak var image21: UIImageView!
    @IBOutlet weak var image20: UIImageView!
    @IBOutlet weak var image19: UIImageView!
    @IBOutlet weak var imageEigtheen: UIImageView!
    @IBOutlet weak var imageSeventeen: UIImageView!
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
    var tapImageSeventeen =  UITapGestureRecognizer()
    var tapImageEighteen =  UITapGestureRecognizer()
    var tapImage19 =  UITapGestureRecognizer()
    var tapImage20 =  UITapGestureRecognizer()
    var tapImage21 =  UITapGestureRecognizer()
    var tapImage22 =  UITapGestureRecognizer()
    var tapImage23 =  UITapGestureRecognizer()
    var tapImage24 =  UITapGestureRecognizer()
    var tapImage25 =  UITapGestureRecognizer()
    var tapImage26 =  UITapGestureRecognizer()
    var tapImage27 =  UITapGestureRecognizer()
    var tapImage28 =  UITapGestureRecognizer()
    var tapImage29 =  UITapGestureRecognizer()
    var tapImage30 =  UITapGestureRecognizer()
    var tapImage31 =  UITapGestureRecognizer()
    var tapImage32 =  UITapGestureRecognizer()
    var tapImage33 =  UITapGestureRecognizer()
    var tapImage34 =  UITapGestureRecognizer()
    var tapImage35 =  UITapGestureRecognizer()
    var tapImage36 =  UITapGestureRecognizer()

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
        tapImageSeventeen.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageSeventeen.addGestureRecognizer(tapImageSeventeen)
        tapImageEighteen.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageEigtheen.addGestureRecognizer(tapImageEighteen)
        tapImage19.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image19.addGestureRecognizer(tapImage19)
        tapImage20.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image20.addGestureRecognizer(tapImage20)
        tapImage21.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image21.addGestureRecognizer(tapImage21)
        tapImage22.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image22.addGestureRecognizer(tapImage22)
        tapImage23.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image23.addGestureRecognizer(tapImage23)
        tapImage24.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image24.addGestureRecognizer(tapImage24)
        tapImage25.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image25.addGestureRecognizer(tapImage25)
        tapImage26.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image26.addGestureRecognizer(tapImage26)
        tapImage27.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image27.addGestureRecognizer(tapImage27)
        tapImage28.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image28.addGestureRecognizer(tapImage28)
        tapImage29.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image29.addGestureRecognizer(tapImage29)
        tapImage30.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image30.addGestureRecognizer(tapImage30)
        tapImage31.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image31.addGestureRecognizer(tapImage31)
        tapImage32.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image32.addGestureRecognizer(tapImage32)
        tapImage33.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image33.addGestureRecognizer(tapImage33)
        tapImage34.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image34.addGestureRecognizer(tapImage34)
        tapImage35.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image35.addGestureRecognizer(tapImage35)
        tapImage36.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image36.addGestureRecognizer(tapImage36)
    }
}
