//
//  ViewController.swift
//  Table View Test
//
//  Created by user154425 on 6/10/19.
//  Copyright © 2019 user154425. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {

// MODEL VIEW DATA:
    
    // 0 = Sunday; 1 = Monday, 2 = Tuesday; etc.
    let dayOfWeek = 1
    
    // Restaurant arrays contain promotion information and are organized based on day of the week (0 = Monday, 1 = Tuesday, etc.).  "nil" means there is no deal that day.
    let restaurantName1 = "VietNomNom Nom Nom Nom Nom"
    let restaurantName2 = "Blaze Pizza"
    let restaurantName3 = "Five & Dime"
    
    
    let restaurant1 = ["dice1","dice5"]
    let restaurant2 = "dice5"
    let restaurant3 = "Hello World"
    
    let picture1 = "dice1"
    let picture2 = "dice5"
    let picture3 = "dice1"

    let text1 = "Hello World"
    let text2 = "Go Gators"
    let text3 = "Go Jags"
    
    
// TABLE VIEW DATA:
    
    // Following three arrays have data that is applied to the table view and transferred to the DetailsViewController.  Will need to manually update based on restaurants that have promotions to be included that day.
    lazy var restaurantNameArray: [String] = { [unowned self] in
        return [self.restaurantName1, self.restaurantName2, self.restaurantName3]
        }()
    
    lazy var itemArray: [String] = { [unowned self] in
        return [self.restaurant1[self.dayOfWeek], self.restaurant2, self.restaurant3]
    }()
    
    lazy var pictureArray: [String] = {[unowned self] in return [self.picture1, self.picture2, self.picture3] }()
    
    lazy var textArray: [String] = {[unowned self] in return [self.text1, self.text2, self.text3] }()
    

    
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
        cell.promotionDescription.text = restaurantNameArray[indexPath.row]
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 141
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
