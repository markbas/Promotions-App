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
    
    let dinnerCount = 6
    
    let dinnerArrayOne = ["Prairie Moon", "dice5", "Happy hour food specials", "4pm-6pm", "$6 Little Plates", "1635 Chicago Ave"]
    let dinnerArrayTwo = ["Koi", "dice1", "Happy hour food specials", "4:30-close", "Half off certain starters and maki rolls", "624 Davis St"]
    let dinnerArrayThree = ["Bar Louie", "dice5", "Appy Hour: Appetizer specials", "4pm-close", "Half off flatbreads and select apps", "1520 Sherman Ave"]
    let dinnerArrayFour = ["Terra & Vine", "dice1", "Happy hour food specials", "4:30pm-6:30pm", "$6 Pizzettes - bar area only", "1701 Maple Ave"]
    let dinnerArrayFive = ["Kokomo", "dice5", "$12.99 All you can eat lunch buffet", "11:30am-3:00pm", "$12.99 All you can eat Korean lunch buffet", "1639 Orrington Ave"]
    let dinnerArraySix = ["Celtic Knot", "dice5", "Appetizer, entree, and dessert specials", "4pm-9pm", "Appetizer, entree, and dessert specials - see website for details", "626 Church St"]
    let dinnerArraySeven = ["","","","","",""]
    let dinnerArrayEight = ["","","","","",""]
    let dinnerArrayNine = ["","","","","",""]
    let dinnerArrayTen = ["","","","","",""]

    
    
    let drinksCount = 5
    
    let drinksArrayOne = ["Prairie Moon", "dice5", "Happy hour drink specials", "4pm-6pm", "$6 wine glasses, $4 pints, $4 Fat Tire Cans, and $5 cocktails", "1635 Chicago Ave"]
    let drinksArrayTwo = ["Koi", "dice1", "Happy hour drink specials", "4:30pm-6:30pm", "Half price specialty cocktails", "624 Davis St"]
    let drinksArrayThree = ["Little Mexican Cafe", "dice5", "Happy hour drink specials", "4pm-7pm", "$5 margaritas and glasses of wine (House Chardonnay or Cabernet only)", "1010 Church St"]
    let drinksArrayFour = ["Terra & Vine", "dice5", "Happy hour drink specials", "4:30pm-6:30pm", "$3 beer, $5 glasses of wine, $7 whiskey cocktails", "1010 Church St"]
    let drinksArrayFive = ["Celtic Knot", "dice5", "All day drink specials", "All Day", "$4 Smithwicks pints, $3 Red Stripe, $6 whiskey cocktails", "626 Church St"]
    let drinksArraySix = ["","","","","",""]
    let drinksArraySeven = ["","","","","",""]
    let drinksArrayEight = ["","","","","",""]
    let drinksArrayNine = ["","","","","",""]
    let drinksArrayTen = ["","","","","",""]

    

    //TUESDAY PROMOTIONS
    
   // let dinnerCount = 7
    
   // let dinnerArrayOne = ["Prairie Moon", "dice5", "Happy hour food specials", "4pm-6pm", "$6 Little Plates", "1635 Chicago Ave"]
   // let dinnerArrayTwo = ["Koi", "dice1", "Happy hour food specials", "4:30-close", "Half off certain starters and maki rolls", "624 Davis St"]
    // let dinnerArrayThree = ["Found Kitchen", "dice5", "Happy Hour", "4pm-6pm", "See website for details", "1631 Chicago Ave"]
    // let dinnerArrayFour = ["Bar Louie", "dice5", "Half off burgers", "5pm-close", "50% off craft burgers", "1520 Sherman Ave"]
    // let dinnerArrayFive = ["Terra & Vine", "dice1", "$6 Pizzettes", "4:30pm-6:30pm", "1701 Maple Ave"]
    // let dinnerArraySix = ["Kokomo", "dice5", "$12.99 All you can eat lunch buffet", "11:30am-3:00pm", "$12.99 All you can eat Korean lunch buffet", "1639 Orrington Ave"]
    // let dinnerArraySeven = ["Celtic Knot", "dice5", "Appetizer, entree, and dessert specials", "4pm-9pm", "Appetizer, entree, and dessert specials - see website for details", "626 Church St"]
    // let dinnerArrayEight = ["","","","","",""]
    // let dinnerArrayNine = ["","","","","",""]
    // let dinnerArrayTen = ["","","","","",""]

    
    // let drinksCount = 6
    
    // let drinksArrayOne = ["Whiskey Thief", "dice1", "Drink Specials and Trivia Night", "Starting at 8pm", "$3.50 Old Style, $15 buckets, $4 rotating pints", "616 Davis St"]
    // let drinksArrayTwo = ["Prairie Moon", "dice5", "Happy hour drink specials", "4pm-6pm", "$6 wine glasses, $4 pints, $4 Fat Tire Cans, and $5 cocktails", "1635 Chicago Ave"]
    // let drinksArrayThree = ["Koi", "dice1", "Happy hour drink specials", "4:30pm-6:30pm", "Half price specialty cocktails", "624 Davis St"]
    // let drinksArrayFour = ["Little Mexican Cafe", "dice5", "Happy hour drink specials", "4pm-7pm", "$5 margaritas and glasses of wine (House Chardonnay or Cabernet only)", "1010 Church St"]
    // let drinksArrayFive = ["Terra & Vine", "dice5", "Happy hour drink specials", "4:30pm-6:30pm", "$3 beer, $5 glasses of wine, $7 whiskey cocktails", "1010 Church St"]
    // let drinksArraySix = ["Celtic Knot", "dice5", "All day drink specials", "All Day", "$4 Kilkenny pints, $3 Red Stripe, $6 whiskey cocktails", "626 Church St"]
    // let drinksArraySeven = ["","","","","",""]
    // let drinksArrayEight = ["","","","","",""]
    // let drinksArrayNine = ["","","","","",""]
    // let drinksArrayTen = ["","","","","",""]
    
    
    
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
            destinationVC.restaurantName4 = dinnerArrayFour[0]
            destinationVC.restaurantName5 = dinnerArrayFive[0]
            destinationVC.restaurantName6 = dinnerArraySix[0]
            
            
            destinationVC.picture1 = dinnerArrayOne[1]
            destinationVC.picture2 = dinnerArrayTwo[1]
            destinationVC.picture3 = dinnerArrayThree[1]
            destinationVC.picture4 = dinnerArrayFour[1]
            destinationVC.picture5 = dinnerArrayFive[1]
            destinationVC.picture6 = dinnerArraySix[1]

            

            destinationVC.text1 = dinnerArrayOne[2]
            destinationVC.text2 = dinnerArrayTwo[2]
            destinationVC.text3 = dinnerArrayThree[2]
            destinationVC.text4 = dinnerArrayFour[2]
            destinationVC.text5 = dinnerArrayFive[2]
            destinationVC.text6 = dinnerArraySix[2]


            
            destinationVC.when1 = dinnerArrayOne[3]
            destinationVC.when2 = dinnerArrayTwo[3]
            destinationVC.when3 = dinnerArrayThree[3]
            destinationVC.when4 = dinnerArrayFour[3]
            destinationVC.when5 = dinnerArrayFive[3]
            destinationVC.when6 = dinnerArraySix[3]


            
            destinationVC.details1 = dinnerArrayOne[4]
            destinationVC.details2 = dinnerArrayTwo[4]
            destinationVC.details3 = dinnerArrayThree[4]
            destinationVC.details4 = dinnerArrayFour[4]
            destinationVC.details5 = dinnerArrayFive[4]
            destinationVC.details6 = dinnerArraySix[4]

            
            
            destinationVC.address1 = dinnerArrayOne[5]
            destinationVC.address2 = dinnerArrayTwo[5]
            destinationVC.address3 = dinnerArrayThree[5]
            destinationVC.address4 = dinnerArrayFour[5]
            destinationVC.address5 = dinnerArrayFive[5]
            destinationVC.address6 = dinnerArraySix[5]

            
            destinationVC.restaurantCount = dinnerCount
            
        }
        if segue.identifier == "drinksSegue" {
            
            let destinationVC = segue.destination as! TableViewController

            destinationVC.restaurantName1 = drinksArrayOne[0]
            destinationVC.restaurantName2 = drinksArrayTwo[0]
            destinationVC.restaurantName3 = drinksArrayThree[0]
            destinationVC.restaurantName4 = drinksArrayFour[0]
            destinationVC.restaurantName5 = drinksArrayFive[0]
            
            destinationVC.picture1 = drinksArrayOne[1]
            destinationVC.picture2 = drinksArrayTwo[1]
            destinationVC.picture3 = drinksArrayThree[1]
            destinationVC.picture4 = drinksArrayFour[1]
            destinationVC.picture5 = drinksArrayFive[1]
            
            
            destinationVC.text1 = drinksArrayOne[2]
            destinationVC.text2 = drinksArrayTwo[2]
            destinationVC.text3 = drinksArrayThree[2]
            destinationVC.text4 = drinksArrayFour[2]
            destinationVC.text5 = drinksArrayFive[2]
            
            
            destinationVC.when1 = drinksArrayOne[3]
            destinationVC.when2 = drinksArrayTwo[3]
            destinationVC.when3 = drinksArrayThree[3]
            destinationVC.when4 = drinksArrayFour[3]
            destinationVC.when5 = drinksArrayFive[3]
            
            
            destinationVC.details1 = drinksArrayOne[4]
            destinationVC.details2 = drinksArrayTwo[4]
            destinationVC.details3 = drinksArrayThree[4]
            destinationVC.details4 = drinksArrayFour[4]
            destinationVC.details5 = drinksArrayFive[4]
            
            
            destinationVC.address1 = drinksArrayOne[5]
            destinationVC.address2 = drinksArrayTwo[5]
            destinationVC.address3 = drinksArrayThree[5]
            destinationVC.address4 = drinksArrayFour[5]
            destinationVC.address5 = drinksArrayFive[5]
            
            destinationVC.restaurantCount = drinksCount
        }
    }
    
        }
