//
//  SelectionViewController.swift
//  Table View Test
//
//  Created by user154425 on 6/12/19.
//  Copyright © 2019 user154425. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {

    var lunchArray = ["dice1", "dice5", "Hello World  Hello World Hello World Hello World Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World Hello World"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func lunchButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "goToTableView", sender: self)
        
        
    }
    
   // override func prepare(for segue: UIStoryboardSegue, sender: (Any)?) {
     // if segue.identifier == "goToTableView" {
            
     // let secondVC = segue.destination as! TableViewController
            
          //  secondVC.dataFieldOne = textArray[0]
        //    secondVC.pictureOne = pictureArray[0]
            
        }
//{
//{
