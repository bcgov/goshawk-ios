//
//  EggshellController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-08.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit

class EggshellController: SignsViewController {
    
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    var tapImageOne =  UITapGestureRecognizer()
    var tapImageTwo =  UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapImageOne.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageOne.addGestureRecognizer(tapImageOne)
        tapImageTwo.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageTwo.addGestureRecognizer(tapImageTwo)
    }
}
