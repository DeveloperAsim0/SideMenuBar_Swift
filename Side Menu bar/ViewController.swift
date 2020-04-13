//
//  ViewController.swift
//  Side Menu bar
//
//  Created by Mihir Vyas on 12/04/20.
//  Copyright © 2020 Mihir Vyas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mySideMenu = false
    
    @IBOutlet weak var leadingConst: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sideMenu(_ sender: Any) {
        if (mySideMenu) {
            leadingConst.constant = -240
            UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()
            })
        } else {
            leadingConst.constant = 0
            UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()
            })
        }
        
        mySideMenu = !mySideMenu
    }
}

