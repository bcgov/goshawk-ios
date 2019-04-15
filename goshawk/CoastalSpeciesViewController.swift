//
//  CoastalSpeciesViewController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-02-12.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import Foundation
import UIKit

class CoastalSpeciesViewController : FirstViewController {
    
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var imageOne: UIImageView!
    
    var tapOne = UITapGestureRecognizer()
    var tapTwo = UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tapOne.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageOne.addGestureRecognizer(tapOne)
        tapTwo.addTarget(self, action: #selector(BaseViewController.imageTapped(_:)))
        imageTwo.addGestureRecognizer(tapTwo)
    }
}
