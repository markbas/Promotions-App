//
//  SelectionViewController.swift
//  Table View Test
//
//  Created by user154425 on 6/12/19.
//  Copyright © 2019 user154425. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {

// MONDAY PROMOTIONS
    
    let lunchArrayOne = ["Asian Restaurant", "dice1", "10% Off Bahn Mi", "11am-3pm", "10% off any Bahn Mi on the menu", "1234 Sherman Dr"]
    let lunchArrayTwo = ["Sandwich Shop", "dice5", "Half Price Sandwiches and Appetizers", "10:30am-2:30pm", "50% off any sandwich under $15", "5678 Chicago St"]
    let lunchArrayThree = ["Mexican Restaurant", "dice1", "20% Off Tacos", "11am-2:30pm", "20% off any order of a 3 taco combo", "901 Davis St"]
    
    let dinnerArrayOne = ["Pizza Shop", "dice5", "25% Off deep dish and 10% off slices and 15% off salads", "5pm-11pm", "25% off any Chicago Style pizza", "1357 Chicago St"]
    let dinnerArrayTwo = ["Thai Restaurant", "dice1", "$10 Noodle Dishes", "5:30pm-10:30pm", "All noodle dishes on the menu only $10", "2468 Davis St"]
    let dinnerArrayThree = ["Mexican Restaurant", "dice5", "Half Price Tacos", "6pm-10pm", "All tacos 50% off", "2222 Foster St"]
    
    let drinksArrayOne = ["Pizza Joint", "dice5", "25% Off deep dish", "5pm-11pm", "25% off any Chicago Style pizza", "1357 Chicago St"]
    let drinksArrayTwo = ["Asian Restaurant", "dice1", "$10 Noodle Dishes", "5:30pm-10:30pm", "All noodle dishes on the menu only $10", "2468 Davis St"]
    let drinksArrayThree = ["Mexican Restaurant", "dice5", "Half Price Tacos", "6pm-10pm", "All tacos 50% off", "2222 Foster St"]

    
    @IBOutlet weak var logoLabel: UILabel!
    
    @IBOutlet weak var dinnerButton: UIButton!
    
    @IBOutlet weak var drinksButton: UIButton!
    
    @IBOutlet weak var contactButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoLabel.frame = CGRect(x: (self.view.frame.width)/2-(300/2), y: (self.view.frame.height)/8, width: 300, height: 78)
        
        dinnerButton.frame = CGRect(x: (self.view.frame.width)/2-(200/2), y: (self.view.frame.height)/2-50, width: 200, height: 78)
        drinksButton.frame = CGRect(x: (self.view.frame.width)/2-(200/2), y: (self.view.frame.height-78+124)/2+50, width: 200, height: 78)
        contactButton.frame = CGRect(x: (self.view.frame.width)/2-(225/2), y: (self.view.frame.height)-100, width: 225, height: 78)
        
        
        dinnerButton.layer.cornerRadius = 10
        dinnerButton.layer.masksToBounds = false
        dinnerButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
        dinnerButton.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        dinnerButton.layer.shadowOpacity = 0.8
        dinnerButton.backgroundColor = UIColor.white
        
        drinksButton.layer.cornerRadius = 10
        drinksButton.layer.masksToBounds = false
        drinksButton.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
        drinksButton.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        drinksButton.layer.shadowOpacity = 0.8
        drinksButton.backgroundColor = UIColor.white
        
        
    }
    
    
    @IBAction func dinnerButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "dinnerSegue", sender: self)
        
    }
    
    @IBAction func drinksButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "drinksSegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "dinnerSegue" {
            
            let destinationVC = segue.destination as! TableViewController
            
            destinationVC.restaurantName1 = dinnerArrayOne[0]
            destinationVC.restaurantName2 = dinnerArrayTwo[0]
            destinationVC.restaurantName3 = dinnerArrayThree[0]
            
            destinationVC.picture1 = dinnerArrayOne[1]
            destinationVC.picture2 = dinnerArrayTwo[1]
            destinationVC.picture3 = dinnerArrayThree[1]

            destinationVC.text1 = dinnerArrayOne[2]
            destinationVC.text2 = dinnerArrayTwo[2]
            destinationVC.text3 = dinnerArrayThree[2]
            
            destinationVC.when1 = dinnerArrayOne[3]
            destinationVC.when2 = dinnerArrayTwo[3]
            destinationVC.when3 = dinnerArrayThree[3]
            
            destinationVC.details1 = dinnerArrayOne[4]
            destinationVC.details2 = dinnerArrayTwo[4]
            destinationVC.details3 = dinnerArrayThree[4]
            
            destinationVC.address1 = dinnerArrayOne[5]
            destinationVC.address2 = dinnerArrayTwo[5]
            destinationVC.address3 = dinnerArrayThree[5]
            
        }
        if segue.identifier == "drinksSegue" {
            
            let destinationVC = segue.destination as! TableViewController
            
            destinationVC.restaurantName1 = drinksArrayOne[0]
            destinationVC.restaurantName2 = drinksArrayTwo[0]
            destinationVC.restaurantName3 = drinksArrayThree[0]
            
            destinationVC.picture1 = drinksArrayOne[1]
            destinationVC.picture2 = drinksArrayTwo[1]
            destinationVC.picture3 = drinksArrayThree[1]
            
            destinationVC.text1 = drinksArrayOne[2]
            destinationVC.text2 = drinksArrayTwo[2]
            destinationVC.text3 = drinksArrayThree[2]
            
            destinationVC.when1 = drinksArrayOne[3]
            destinationVC.when2 = drinksArrayTwo[3]
            destinationVC.when3 = drinksArrayThree[3]
            
            destinationVC.details1 = drinksArrayOne[4]
            destinationVC.details2 = drinksArrayTwo[4]
            destinationVC.details3 = drinksArrayThree[4]
            
            destinationVC.address1 = drinksArrayOne[5]
            destinationVC.address2 = drinksArrayTwo[5]
            destinationVC.address3 = drinksArrayThree[5]
        }
    }
    
        }
