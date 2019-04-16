//
//  ForagingController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-05.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit

class ForagingController:HabitatViewController {
    
    @IBOutlet weak var thirdText: UITextView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var secondText: UITextView!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var firstTextView: UITextView!
    
    var tapOne = UITapGestureRecognizer()
    var tapTwo = UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapOne.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        firstImage.addGestureRecognizer(tapOne)
        tapTwo.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        secondImage.addGestureRecognizer(tapTwo)
        
    }
}
