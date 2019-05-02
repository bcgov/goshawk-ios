//
//  PelletsController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-07.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit

class PelletsController: SignsViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var thirdimage: UIImageView!
    @IBOutlet weak var secondDesc: UITextView!
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var textView: UITextView!

    var tapImageOne =  UITapGestureRecognizer()
    var tapImageTwo =  UITapGestureRecognizer()
    var tapImageThree =  UITapGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()
        tapImageOne.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        firstImage.addGestureRecognizer(tapImageOne)
        tapImageOne.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        secondImage.addGestureRecognizer(tapImageOne)
        tapImageOne.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        thirdimage.addGestureRecognizer(tapImageOne)
    }
}
