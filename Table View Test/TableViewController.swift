//
//  ViewController.swift
//  Table View Test
//
//  Created by user154425 on 6/10/19.
//  Copyright © 2019 user154425. All rights reserved.
//

import UIKit
import ChameleonFramework


class TableViewController: UITableViewController {

// MODEL VIEW DATA:
    
    // 0 = Sunday; 1 = Monday, 2 = Tuesday; etc.
    let dayOfWeek = 1
    
    // Restaurant arrays contain promotion information and are organized based on day of the week (0 = Monday, 1 = Tuesday, etc.).  "nil" means there is no deal that day.
    var restaurantName1 = ""
    var restaurantName2 = ""
    var restaurantName3 = ""
    
    //var restaurant1 = ["",""]
    //var restaurant2 = ""
    //var restaurant3 = ""
    
    var picture1 = ""
    var picture2 = ""
    var picture3 = ""

    var text1 = ""
    var text2 = ""
    var text3 = ""
    
    var when1 = ""
    var when2 = ""
    var when3 = ""
    
    var details1 = ""
    var details2 = ""
    var details3 = ""
    
    var address1 = ""
    var address2 = ""
    var address3 = ""
    
    
// TABLE VIEW DATA:
    
    // Following three arrays have data that is applied to the table view and transferred to the DetailsViewController.  Will need to manually update based on restaurants that have promotions to be included that day.
    lazy var restaurantNameArray: [String] = { [unowned self] in
        return [self.restaurantName1, self.restaurantName2, self.restaurantName3]
        }()
    
//    lazy var itemArray: [String] = { [unowned self] in
//        return [self.restaurant1[self.dayOfWeek], self.restaurant2, self.restaurant3]
//    }()
    
    lazy var pictureArray: [String] = {[unowned self] in return [self.picture1, self.picture2, self.picture3] }()
    
    lazy var textArray: [String] = {[unowned self] in return [self.text1, self.text2, self.text3] }()
    
    lazy var whenArray: [String] = {[unowned self] in return [self.when1, self.when2, self.when3] }()

    lazy var detailsArray: [String] = {[unowned self] in return [self.details1, self.details2, self.details3] }()
    
    lazy var addressArray: [String] = {[unowned self] in return [self.address1, self.address2, self.address3] }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "MessageCell", bundle: nil), forCellReuseIdentifier: "customMessageCell")

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNameArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customMessageCell", for:  indexPath) as! CustomMessageCell
        
        cell.messageBody.text = textArray[indexPath.row]
        cell.avatarImageView.image = UIImage(named: pictureArray[indexPath.row])
        cell.promotionDescription.text = restaurantNameArray[indexPath.row]
        
        if let color = UIColor.flatWhite()?.darken(byPercentage: (CGFloat(indexPath.row)/CGFloat(restaurantNameArray.count))/2) {
            
            cell.backgroundColor = color
            cell.messageBody.textColor = UIColor.init(contrastingBlackOrWhiteColorOn: color, isFlat: true)
            cell.promotionDescription.textColor = UIColor.init(contrastingBlackOrWhiteColorOn: color, isFlat: true)
        }
        
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
    
        destinationVC.dataFieldOne = whenArray[indexPath.row]
    
        destinationVC.pictureOne = pictureArray[indexPath.row]
            
        destinationVC.dataFieldTwo = detailsArray[indexPath.row]
            
        destinationVC.dataFieldThree = addressArray[indexPath.row]
            
    }
    
}

}
