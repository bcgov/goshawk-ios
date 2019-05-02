//
//  WhiteWashController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-08.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit

class  WhiteWashController: SignsViewController {
    
    @IBOutlet weak var labelthree: UILabel!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var labeltwo: UILabel!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var labelone: UILabel!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var textView: UITextView!

    var tapImageOne =  UITapGestureRecognizer()
    var tapImageTwo =  UITapGestureRecognizer()
    var tapImageThree =  UITapGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()
        tapImageOne.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageView1.addGestureRecognizer(tapImageOne)
        tapImageTwo.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageView2.addGestureRecognizer(tapImageTwo)
        tapImageThree.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageView3.addGestureRecognizer(tapImageThree)
    }
}
