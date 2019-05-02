//
//  MimcCallViewController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-11.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit

class MimcCallViewController: CallsViewController {
    
    @IBOutlet weak var labelthree: UILabel!
    @IBOutlet weak var imageThree: UIImageView!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var textView: UITextView!

    var tapImageOne = UITapGestureRecognizer()
    var tapImageTwo = UITapGestureRecognizer()
    var tapImageThree = UITapGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()

        tapImageOne.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageOne.addGestureRecognizer(tapImageOne)
        tapImageTwo.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageTwo.addGestureRecognizer(tapImageTwo)
        tapImageThree.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageThree.addGestureRecognizer(tapImageThree)
    }
}
