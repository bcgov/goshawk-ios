//
//  MoultedFeatherController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-07.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit

class  MoultedFeatherController: SignsViewController {
    
    @IBOutlet weak var label8: UITextView!
    @IBOutlet weak var image8: UIImageView!
    @IBOutlet weak var label7: UITextView!
    @IBOutlet weak var image7: UIImageView!
    @IBOutlet weak var label6: UITextView!
    @IBOutlet weak var image6: UIImageView!
    @IBOutlet weak var header2: UITextView!
    @IBOutlet weak var fifthLabel: UITextView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var label5: UITextView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var label3: UITextView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var header1: UITextView!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var firstDesc: UITextView!
    
    var tapImageOne =  UITapGestureRecognizer()
    var tapImageTwo =  UITapGestureRecognizer()
    var tapImageThree =  UITapGestureRecognizer()
    var tapImageFour =  UITapGestureRecognizer()
    var tapImageFive =  UITapGestureRecognizer()
    var tapImageSix =  UITapGestureRecognizer()
    var tapImageSeven =  UITapGestureRecognizer()
    var tapImageEight =  UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setImageGesture()
    }
    
    private func setImageGesture() {
        tapImageOne.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image1.addGestureRecognizer(tapImageOne)
        tapImageTwo.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image2.addGestureRecognizer(tapImageTwo)
        tapImageThree.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image3.addGestureRecognizer(tapImageThree)
        tapImageFour.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image4.addGestureRecognizer(tapImageFour)
        tapImageFive.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image5.addGestureRecognizer(tapImageFive)
        tapImageSix.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image6.addGestureRecognizer(tapImageSix)
        tapImageSeven.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image7.addGestureRecognizer(tapImageSeven)
        tapImageEight.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        image8.addGestureRecognizer(tapImageEight)
    }
}
