//
//  DetailsViewController.swift
//  Table View Test
//
//  Created by user154425 on 6/11/19.
//  Copyright © 2019 user154425. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var dataFieldOne = ""
    var pictureOne = ""
    var dataFieldTwo = ""
    var dataFieldThree = ""
    
    @IBOutlet weak var textFieldOne: UITextField!
    @IBOutlet weak var imageViewOne: UIImageView!
    @IBOutlet weak var textFieldTwo: UITextField!
    @IBOutlet weak var textFieldThree: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldOne.text = dataFieldOne
        imageViewOne.image = UIImage(named:pictureOne)
        textFieldTwo.text = dataFieldTwo
        textFieldThree.text = dataFieldThree
        
        
    }
    
}
