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
    @IBOutlet weak var textFieldTwo: UILabel!
    @IBOutlet weak var textFieldThree: UITextField!
    
    @IBOutlet weak var whenField: UITextField!
    @IBOutlet weak var detailsField: UITextField!
    @IBOutlet weak var whereField: UITextField!
    
    //let relativeHeaderFontConstant:CGFloat = 0.050
    //let relativeDetailsFontConstant:CGFloat = 0.045
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldOne.text = dataFieldOne
        imageViewOne.image = UIImage(named:pictureOne)
        textFieldTwo.text = dataFieldTwo
        textFieldThree.text = dataFieldThree
        
        
        //for text in whenField {
            
        //    text.font = text.font?.withSize(self.view.frame.height * relativeHeaderFontConstant)
            
        //}
        
        imageViewOne.frame = CGRect(x: (self.view.frame.width)/5, y: (self.view.frame.height)/8, width: CGFloat(self.view.frame.width*0.6), height: CGFloat(self.view.frame.width*0.6))
        
        whenField.frame = CGRect(x: 0, y: (self.view.frame.height)/2-10, width: CGFloat(self.view.frame.width), height: 30)
        
        textFieldOne.frame = CGRect(x: 0, y: (self.view.frame.height)/2+25, width: CGFloat(self.view.frame.width), height: 30)
        
        detailsField.frame = CGRect(x: 0, y: (self.view.frame.height)/2+85, width: CGFloat(self.view.frame.width), height: 30)
        
        textFieldTwo.frame = CGRect(x: (self.view.frame.width)/10, y: (self.view.frame.height)/2+120, width: CGFloat(self.view.frame.width)*0.8, height: 65)
        
        whereField.frame = CGRect(x: 0, y: (self.view.frame.height)/2+205, width: CGFloat(self.view.frame.width), height: 30)
        
        textFieldThree.frame = CGRect(x: 0, y: (self.view.frame.height)/2+240, width: CGFloat(self.view.frame.width), height: 30)
        
    }
    
}
