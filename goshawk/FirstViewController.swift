//
//  FirstViewController.swift
//  goshawk
//
//  Created by Barrett Falk on 2019-01-23.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import UIKit

class FirstViewController: BaseViewController {

    @IBOutlet weak var initialPage: UIView!
    @IBOutlet weak var adultTabView: UIView!
    @IBOutlet weak var immatureView: UIView!
    @IBOutlet weak var youngView: UIView!
    @IBOutlet weak var coastalView: UIView!
    @IBOutlet weak var speciesView: UIView!
    @IBOutlet weak var valueChanged: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    @IBAction func segmentValueChanged(_ sender: UISegmentedControl) {
        let segIndex = valueChanged.selectedSegmentIndex

        switch segIndex {
        case 0:
            self.initialPage.isHidden = false
            self.adultTabView.isHidden = true
            self.immatureView.isHidden = true
            self.youngView.isHidden = true
            self.coastalView.isHidden = true
            self.speciesView.isHidden = true
        case 1:
            self.initialPage.isHidden = true
            self.adultTabView.isHidden = false
            self.immatureView.isHidden = true
            self.youngView.isHidden = true
            self.coastalView.isHidden = true
            self.speciesView.isHidden = true
        case 2:
            self.initialPage.isHidden = true
            self.adultTabView.isHidden = true
            self.immatureView.isHidden = false
            self.youngView.isHidden = true
            self.coastalView.isHidden = true
            self.speciesView.isHidden = true
        case 3:
            self.initialPage.isHidden = true
            self.adultTabView.isHidden = true
            self.immatureView.isHidden = true
            self.youngView.isHidden = false
            self.coastalView.isHidden = true
            self.speciesView.isHidden = true
        case 4:
            self.initialPage.isHidden = true
            self.adultTabView.isHidden = true
            self.immatureView.isHidden = true
            self.youngView.isHidden = true
            self.coastalView.isHidden = false
            self.speciesView.isHidden = true
        case 5:
            self.initialPage.isHidden = true
            self.adultTabView.isHidden = true
            self.immatureView.isHidden = true
            self.youngView.isHidden = true
            self.coastalView.isHidden = true
            self.speciesView.isHidden = false
        default:
            break
        }
    }
}
