//
//  CallsViewController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-01-24.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import UIKit

class CallsViewController: BaseViewController {

    @IBOutlet weak var initailView: UIView!
    @IBOutlet weak var adultView: UIView!
    @IBOutlet weak var youngView: UIView!
    @IBOutlet weak var speciesView: UIView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var mimicView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }

    @IBAction func valueChanged(_ sender: Any) {
        switch segmentControl.selectedSegmentIndex {
        case 0:
            self.initailView.isHidden = false
            self.adultView.isHidden = true
            self.youngView.isHidden = true
            self.speciesView.isHidden = true
            self.mimicView.isHidden = true
        case 1:
            self.initailView.isHidden = true
            self.adultView.isHidden = false
            self.youngView.isHidden = true
            self.speciesView.isHidden = true
            self.mimicView.isHidden = true
        case 2:
            self.initailView.isHidden = true
            self.adultView.isHidden = true
            self.youngView.isHidden = false
            self.speciesView.isHidden = true
            self.mimicView.isHidden = true
        case 3:
            self.initailView.isHidden = true
            self.adultView.isHidden = true
            self.youngView.isHidden = true
            self.speciesView.isHidden = false
            self.mimicView.isHidden = true
        case 4:
            self.initailView.isHidden = true
            self.adultView.isHidden = true
            self.youngView.isHidden = true
            self.speciesView.isHidden = true
            self.mimicView.isHidden = false
        default:
            break
        }
    }
}
