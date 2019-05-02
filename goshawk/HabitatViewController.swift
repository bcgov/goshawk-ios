//
//  HabitatViewController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-01-24.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import UIKit

class HabitatViewController: BaseViewController {

    @IBOutlet weak var intialView: UIView!
    @IBOutlet weak var nestingView: UIView!
    @IBOutlet weak var foragingView: UIView!
    @IBOutlet weak var segmentControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    @IBAction func indexChanged(_ sender: Any) {
        let segIndex = segmentControl.selectedSegmentIndex

        switch segIndex {
        case 0:
            self.intialView.isHidden = false
            self.nestingView.isHidden = true
            self.foragingView.isHidden = true
        case 1:
            self.intialView.isHidden = true
            self.nestingView.isHidden = false
            self.foragingView.isHidden = true
        case 2:
            self.intialView.isHidden = true
            self.nestingView.isHidden = true
            self.foragingView.isHidden = false
        default:
            break
        }
    }
}
