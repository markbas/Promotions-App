//
//  ContactViewController.swift
//  Table View Test
//
//  Created by user154425 on 9/9/19.
//  Copyright © 2019 user154425. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    
    @IBOutlet weak var contactLogoLabel: UILabel!
    
    @IBOutlet weak var contactLabelOne: UILabel!
    
    @IBOutlet weak var contactLabelTwo: UILabel!
    
    @IBOutlet weak var contactLabelThree: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contactLogoLabel.frame = CGRect(x: (self.view.frame.width)/2-(300/2), y: (self.view.frame.height)/8, width: 300, height: 78)
    
        contactLabelOne.frame = CGRect(x: (self.view.frame.width)/2-(250/2), y: (self.view.frame.height)/4, width: 250, height: 200)

        contactLabelTwo.frame = CGRect(x: (self.view.frame.width)/2-(250/2), y: (self.view.frame.height)/2-50, width: 250, height: 200)

         contactLabelThree.frame = CGRect(x: (self.view.frame.width)/2-(300/2), y: (self.view.frame.height)/2+25, width: 300, height: 200)
        
        
    }
    
}
