//
//  SelectionViewController.swift
//  Table View Test
//
//  Created by user154425 on 6/12/19.
//  Copyright © 2019 user154425. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
        
    }
    
    @IBAction func lunchButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "goToTableView", sender: self)
        
    }
    

}
