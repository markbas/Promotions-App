//
//  SelectionViewController.swift
//  Table View Test
//
//  Created by user154425 on 6/12/19.
//  Copyright © 2019 user154425. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {

   // var lunchArray = ["dice1", "dice5", "Hello World  Hello World Hello World Hello World Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World Hello World"]
    
    let lunchArrayOne = ["Viet Nom Nom", "dice1", "10% Off Bahn Mi", "11am-3pm", "10% off any Bahn Mi on the menu", "1234 Sherman Dr"]
    let lunchArrayTwo = ["Bat 17", "dice5", "Half Price Sandwiches", "10:30am-2:30pm", "50% off any sandwich under $15", "5678 Chicago St"]
    let lunchArrayThree = ["Taco Diablo", "dice1", "20% Off Tacos", "11am-2:30pm", "20% off any order of a 3 taco combo", "901 Davis St"]
    
    let dinnerArrayOne = ["Giordanos", "dice5", "25% Off deep dish", "5pm-11pm", "25% off any Chicago Style pizza", "1357 Chicago St"]
    let dinnerArrayTwo = ["Cozy Noodles", "dice1", "$10 Noodle Dishes", "5:30pm-10:30pm", "All noodle dishes on the menu only $10", "2468 Davis St"]
    let dinnerArrayThree = ["Little Mexican Cafe", "dice5", "Half Price Tacos", "6pm-10pm", "All tacos 50% off", "2222 Foster St"]
    
    @IBOutlet weak var lunchButton: UIButton!
    
    @IBOutlet weak var dinnerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lunchButton.layer.cornerRadius = 10
        dinnerButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func lunchButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "goToTableView", sender: self)
        
    }
    
    @IBAction func dinnerButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "dinnerSegue", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToTableView" {
            
            let destinationVC = segue.destination as! TableViewController
            
            destinationVC.restaurantName1 = lunchArrayOne[0]
            destinationVC.restaurantName2 = lunchArrayTwo[0]
            destinationVC.restaurantName3 = lunchArrayThree[0]
            
            destinationVC.picture1 = lunchArrayOne[1]
            destinationVC.picture2 = lunchArrayTwo[1]
            destinationVC.picture3 = lunchArrayThree[1]
         
            destinationVC.text1 = lunchArrayOne[2]
            destinationVC.text2 = lunchArrayTwo[2]
            destinationVC.text3 = lunchArrayThree[2]

            destinationVC.when1 = lunchArrayOne[3]
            destinationVC.when2 = lunchArrayTwo[3]
            destinationVC.when3 = lunchArrayThree[3]
            
            destinationVC.details1 = lunchArrayOne[4]
            destinationVC.details2 = lunchArrayTwo[4]
            destinationVC.details3 = lunchArrayThree[4]
            
            destinationVC.address1 = lunchArrayOne[5]
            destinationVC.address2 = lunchArrayTwo[5]
            destinationVC.address3 = lunchArrayThree[5]
            
        }
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
            
        }
        
    }
    
    
   // override func prepare(for segue: UIStoryboardSegue, sender: (Any)?) {
     // if segue.identifier == "goToTableView" {
            
     // let secondVC = segue.destination as! TableViewController
            
          //  secondVC.dataFieldOne = textArray[0]
        //    secondVC.pictureOne = pictureArray[0]
            
        }
//{
//{
