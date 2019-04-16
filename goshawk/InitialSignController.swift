//
//  InitialSignController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-07.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit

class  InitialSignController: SignsViewController {
    
    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    var tapOne = UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tapOne.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageView.addGestureRecognizer(tapOne)
    }
}
