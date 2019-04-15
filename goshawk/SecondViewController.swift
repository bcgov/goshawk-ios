//
//  SecondViewController.swift
//  goshawk
//
//  Created by Barrett Falk on 2019-01-23.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import UIKit

class SecondViewController: BaseViewController {
    
    @IBOutlet weak var initialPage: UIView!
    @IBOutlet weak var globalView: UIView!
    @IBOutlet weak var NAView: UIView!
    @IBOutlet weak var britishView: UIView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func valueChanged(_ sender: UISegmentedControl) {
        let segIndex = segmentControl.selectedSegmentIndex
        
        switch segIndex
        {
        case 0:
            self.initialPage.isHidden = false
            self.globalView.isHidden = true
            self.NAView.isHidden = true
            self.britishView.isHidden = true
            break
        case 1:
            self.initialPage.isHidden = true
            self.globalView.isHidden = false
            self.NAView.isHidden = true
            self.britishView.isHidden = true
            break
        case 2:
            self.initialPage.isHidden = true
            self.globalView.isHidden = true
            self.NAView.isHidden = false
            self.britishView.isHidden = true
            break
        case 3:
            self.initialPage.isHidden = true
            self.globalView.isHidden = true
            self.NAView.isHidden = true
            self.britishView.isHidden = false
            break
        default:
            break
        }
        
    }
    
}

