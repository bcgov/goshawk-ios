//
//  NestsViewController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-01-24.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import UIKit

class NestsViewController: BaseViewController {

    @IBOutlet weak var intialView: UIView!
    @IBOutlet weak var treeView: UIView!
    @IBOutlet weak var photoView: UIView!
    @IBOutlet weak var actInactView: UIView!    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentValue(_ sender: Any) {
        let segIndex = segmentControl.selectedSegmentIndex
        
        switch segIndex
        {
        case 0:
            self.intialView.isHidden = false
            self.treeView.isHidden = true
            self.photoView.isHidden = true
            self.actInactView.isHidden = true
            break
        case 1:
            self.intialView.isHidden = true
            self.treeView.isHidden = false
            self.photoView.isHidden = true
            self.actInactView.isHidden = true
            break
        case 2:
            self.intialView.isHidden = true
            self.treeView.isHidden = true
            self.photoView.isHidden = false
            self.actInactView.isHidden = true
            break
        case 3:
            self.intialView.isHidden = true
            self.treeView.isHidden = true
            self.photoView.isHidden = true
            self.actInactView.isHidden = false
            break
        default:
            break
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
