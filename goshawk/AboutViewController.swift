//
//  AboutViewController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-01-24.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import UIKit

class AboutViewController: BaseViewController {

    @IBOutlet weak var developerView: UIView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var photoView: UIView!
    @IBOutlet weak var govView: UIView!    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func valueChanged(_ sender: Any) {
        let segIndex = segmentControl.selectedSegmentIndex
        
        switch segIndex {
        case 0:
            self.developerView.isHidden = false
            self.contentView.isHidden = true
            self.photoView.isHidden = true
            self.govView.isHidden = true
            break
        case 1:
            self.developerView.isHidden = true
            self.contentView.isHidden = false
            self.photoView.isHidden = true
            self.govView.isHidden = true
            break
        case 2:
            self.developerView.isHidden = true
            self.contentView.isHidden = true
            self.photoView.isHidden = false
            self.govView.isHidden = true
            break
        case 3:
            self.developerView.isHidden = true
            self.contentView.isHidden = true
            self.photoView.isHidden = true
            self.govView.isHidden = false
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
