//
//  SignsViewController.swift
//  goshawk
//
//  Created by Sweta Kutty on 2019-01-24.
//  Copyright © 2019 Government of British Columbia. All rights reserved.
//

import UIKit

class SignsViewController: BaseViewController {

    @IBOutlet weak var initialView: UIView!
    @IBOutlet weak var preyView: UIView!
    @IBOutlet weak var pluckingView: UIView!
    @IBOutlet weak var moltedView: UIView!
    @IBOutlet weak var pelletsView: UIView!
    @IBOutlet weak var eggshellView: UIView!
    @IBOutlet weak var whitewashView: UIView!    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentValueChanged(_ sender: Any) {
       let segIndex = segmentControl.selectedSegmentIndex
        
        switch segIndex {
        case 0:
            self.initialView.isHidden = false
            self.preyView.isHidden = true
            self.pluckingView.isHidden = true
            self.moltedView.isHidden = true
            self.pelletsView.isHidden = true
            self.whitewashView.isHidden = true
            self.eggshellView.isHidden = true
            break
        case 1:
            self.initialView.isHidden = true
            self.preyView.isHidden = false
            self.pluckingView.isHidden = true
            self.moltedView.isHidden = true
            self.pelletsView.isHidden = true
            self.whitewashView.isHidden = true
            self.eggshellView.isHidden = true
            break
        case 2:
            self.initialView.isHidden = true
            self.preyView.isHidden = true
            self.pluckingView.isHidden = false
            self.moltedView.isHidden = true
            self.pelletsView.isHidden = true
            self.whitewashView.isHidden = true
            self.eggshellView.isHidden = true
            break
        case 3:
            self.initialView.isHidden = true
            self.preyView.isHidden = true
            self.pluckingView.isHidden = true
            self.moltedView.isHidden = false
            self.pelletsView.isHidden = true
            self.whitewashView.isHidden = true
            self.eggshellView.isHidden = true
            break
        case 4:
            self.initialView.isHidden = true
            self.preyView.isHidden = true
            self.pluckingView.isHidden = true
            self.moltedView.isHidden = true
            self.pelletsView.isHidden = false
            self.whitewashView.isHidden = true
            self.eggshellView.isHidden = true
            break
        case 5:
            self.initialView.isHidden = true
            self.preyView.isHidden = true
            self.pluckingView.isHidden = true
            self.moltedView.isHidden = true
            self.pelletsView.isHidden = true
            self.whitewashView.isHidden = false
            self.eggshellView.isHidden = true
            break
        case 6:
            self.initialView.isHidden = true
            self.preyView.isHidden = true
            self.pluckingView.isHidden = true
            self.moltedView.isHidden = true
            self.pelletsView.isHidden = true
            self.whitewashView.isHidden = true
            self.eggshellView.isHidden = false
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
