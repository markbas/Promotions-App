//
//  ViewController.swift
//  Table View Test
//
//  Created by user154425 on 6/10/19.
//  Copyright © 2019 user154425. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {
    
    let itemArray = ["dice1", "dice5", "Hello World  Heloo World Hello World Hello World Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World", "Go Gators", "Hello World Hello World"]
    let pictureArray = ["dice1", "dice5", "dice1", "dice1", "dice5", "dice1", "dice1", "dice5", "dice1", "dice1", "dice5", "dice1", "dice1", "dice5", "dice1", "dice1", "dice5", "dice1", "dice5"]
    let textArray = ["Hello World", "Go Gators"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "MessageCell", bundle: nil), forCellReuseIdentifier: "customMessageCell")

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customMessageCell", for:  indexPath) as! CustomMessageCell
        
        cell.messageBody.text = itemArray[indexPath.row]
        cell.avatarImageView.image = UIImage(named: pictureArray[indexPath.row])
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as! DetailsViewController
        
        if let indexPath = tableView.indexPathForSelectedRow {
    
        destinationVC.dataFieldOne = textArray[indexPath.row]
    
        destinationVC.pictureOne = pictureArray[indexPath.row]
    }
    
}

}
