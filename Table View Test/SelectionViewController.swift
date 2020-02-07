//
//  SelectionViewController.swift
//  Table View Test
//
//  Created by user154425 on 6/12/19.
//  Copyright © 2019 user154425. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

class SelectionViewController: UIViewController {
 
    
    //TUESDAY PROMOTIONS
    
       
    let dinnerCount = 7
    
    let dinnerArrayThree = ["Prairie Moon", "PrairieMoon", "Happy hour food specials", "4pm-6pm", "$6 Little Plates and Raw Bar deals", "1635 Chicago Ave"]
    let dinnerArraySeven = ["Koi", "Koi", "Maki roll and starter specials", "4:30-close", "Half off certain starters and maki rolls", "624 Davis St"]
     let dinnerArraySix = ["Found Kitchen", "Found", "Happy hour bites", "4pm-6pm", "Select menu bites for $5", "1631 Chicago Ave"]
     let dinnerArrayTwo = ["Bar Louie", "BarLouie", "Half off burgers and Appy Hour", "4pm or 5pm", "50% off craft burgers 5pm-close / Appy Hour 4-7pm", "1520 Sherman Ave"]
     let dinnerArrayFive = ["Terra & Vine", "Terra&Vine", "Happy Hour Pizzettes", "4:30pm-6:30pm", "Pizzettes for $6", "1701 Maple Ave"]
     let dinnerArrayOne = ["Stacked & Folded","Stacked&Folded","Happy hour bar bites","4pm-6:30pm","$7 bar bite options (change daily)","824 Noyes St"]
     let dinnerArrayFour = ["Celtic Knot", "CelticKnot", "Appetizer, entree, and dessert specials", "4pm-9pm", "Appetizer, entree, and dessert specials - see website for details", "626 Church St"]
     let dinnerArrayEight = ["","","","","",""]
     let dinnerArrayNine = ["","","","","",""]
     let dinnerArrayTen = ["","","","","",""]

    
    
     let drinksArrayOne = ["Whiskey Thief", "WhiskeyThief", "Drink Specials and Trivia Night", "Starting at 8pm", "$3.50 Old Style, $15 buckets, $4 rotating pints", "616 Davis St"]
     let drinksArrayFour = ["Prairie Moon", "PrairieMoon", "Happy hour drink specials", "4pm-6pm", "$6 wine glasses, $4 pints, and $5 cocktails", "1635 Chicago Ave"]
     let drinksArraySeven = ["Koi", "Koi", "Happy hour cocktails", "4:30pm-6:30pm", "Half price specialty cocktails", "624 Davis St"]
     let drinksArrayTwo = ["Little Mexican Cafe", "LittleMexicanCafe", "Happy hour drink specials", "4pm-7pm", "$5 margaritas and glasses of wine (House Chardonnay or Cabernet only)", "1010 Church St"]
     let drinksArrayEight = ["Terra & Vine", "Terra&Vine", "Happy hour drink specials", "4:30pm-6:30pm", "$3 beer, $5 glasses of wine, $7 Hay Ride whiskey cocktails", "1010 Church St"]
     let drinksArrayThree = ["Celtic Knot", "CelticKnot", "All day drink specials", "All Day", "$4 Kilkenny pints, $3 Warsteiner Pilsner, $5 whiskey sours", "626 Church St"]
     let drinksArraySix = ["Stacked & Folded","Stacked&Folded","Happy hour drink specials","4pm-6:30pm","$3 beers, $4 mules, $4 white claws","824 Noyes St"]
     let drinksArrayFive = ["Bangers & Lace","Bangers&Lace","Any 16oz beer for $5","All day","Any 16oz draught beer, only $5","810 Grove St"]
     let drinksArrayNine = ["Cupitol","Cupitol","Happy hour - alcoholic drink specials","4pm-6pm","$5 wine, $5 beer, $3 prosecco, 1/2 off cinnamon old fashioned","812 Grove St"]
     let drinksArrayTen = ["Found Kitchen","Found","Happy hour wine and beer","4pm-6pm","Select glasses of wine and beer for $5","1631 Chicago Ave"]
    
    
    
    @IBOutlet weak var logoLabel: UILabel!
    
    @IBOutlet weak var dinnerButton: UIButton!
    
    @IBOutlet weak var drinksButton: UIButton!
    
    @IBOutlet weak var contactButton: UIButton!
    
    @IBOutlet weak var questionButton: UILabel!
    

    var firestoreData: [Structure] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let db = Firestore.firestore()
               
        func loadFirestoreData() {
            
            self.firestoreData = []

            db.collection("names").getDocuments { (querySnapshot, error) in
              
              if let e = error {
                  print("There was an issue retrieving data from Firestore. \(e)")
              } else {
                  if let snapshotDocuments = querySnapshot?.documents {
                      for doc in snapshotDocuments {
                          let data = doc.data()
                          if let messageBody = data["Two"] as? String, let messageSender = data["one"] as? String, let firestoreTimeOne = data["drinksTimeOne"] as? String, let drinksNumberOne = data["drinksNumber"] as? Int {
                            let newMessage = Structure(Two: messageBody, one: messageSender, drinksTimeOne: firestoreTimeOne, drinksNumber: drinksNumberOne)
                              self.firestoreData.append(newMessage)
                            //  print(newMessage)
                //              DispatchQueue.main.async {
                  //                   self.tableView.reloadData()
                    //              let indexPath = IndexPath(row: self.messages.count - 1, section: 0)
                       //           self.tableView.scrollToRow(at: indexPath, at: .top, animated: false)
                         //     }
                          }
                      }
                  }
              }
          }
         }

        loadFirestoreData()
        
        
        logoLabel.frame = CGRect(x: (self.view.frame.width)/2-(300/2), y: (self.view.frame.height)/8, width: 300, height: 78)
        
        questionButton.frame = CGRect(x: (self.view.frame.width)/2-(250/2), y: (self.view.frame.height)/2-150, width: 250, height: 78)
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
            destinationVC.restaurantName7 = dinnerArraySeven[0]
            destinationVC.restaurantName8 = dinnerArrayEight[0]
            destinationVC.restaurantName9 = dinnerArrayNine[0]
            destinationVC.restaurantName10 = dinnerArrayTen[0]

            
            
            destinationVC.picture1 = dinnerArrayOne[1]
            destinationVC.picture2 = dinnerArrayTwo[1]
            destinationVC.picture3 = dinnerArrayThree[1]
            destinationVC.picture4 = dinnerArrayFour[1]
            destinationVC.picture5 = dinnerArrayFive[1]
            destinationVC.picture6 = dinnerArraySix[1]
            destinationVC.picture7 = dinnerArraySeven[1]
            destinationVC.picture8 = dinnerArrayEight[1]
            destinationVC.picture9 = dinnerArrayNine[1]
            destinationVC.picture10 = dinnerArrayTen[1]

            

            destinationVC.text1 = dinnerArrayOne[2]
            destinationVC.text2 = dinnerArrayTwo[2]
            destinationVC.text3 = dinnerArrayThree[2]
            destinationVC.text4 = dinnerArrayFour[2]
            destinationVC.text5 = dinnerArrayFive[2]
            destinationVC.text6 = dinnerArraySix[2]
            destinationVC.text7 = dinnerArraySeven[2]
            destinationVC.text8 = dinnerArrayEight[2]
            destinationVC.text9 = dinnerArrayNine[2]
            destinationVC.text10 = dinnerArrayTen[2]


            
            destinationVC.when1 = dinnerArrayOne[3]
            destinationVC.when2 = dinnerArrayTwo[3]
            destinationVC.when3 = dinnerArrayThree[3]
            destinationVC.when4 = dinnerArrayFour[3]
            destinationVC.when5 = dinnerArrayFive[3]
            destinationVC.when6 = dinnerArraySix[3]
            destinationVC.when7 = dinnerArraySeven[3]
            destinationVC.when8 = dinnerArrayEight[3]
            destinationVC.when9 = dinnerArrayNine[3]
            destinationVC.when10 = dinnerArrayTen[3]


            
            destinationVC.details1 = dinnerArrayOne[4]
            destinationVC.details2 = dinnerArrayTwo[4]
            destinationVC.details3 = dinnerArrayThree[4]
            destinationVC.details4 = dinnerArrayFour[4]
            destinationVC.details5 = dinnerArrayFive[4]
            destinationVC.details6 = dinnerArraySix[4]
            destinationVC.details7 = dinnerArraySeven[4]
            destinationVC.details8 = dinnerArrayEight[4]
            destinationVC.details9 = dinnerArrayNine[4]
            destinationVC.details10 = dinnerArrayTen[4]

            
            
            destinationVC.address1 = dinnerArrayOne[5]
            destinationVC.address2 = dinnerArrayTwo[5]
            destinationVC.address3 = dinnerArrayThree[5]
            destinationVC.address4 = dinnerArrayFour[5]
            destinationVC.address5 = dinnerArrayFive[5]
            destinationVC.address6 = dinnerArraySix[5]
            destinationVC.address7 = dinnerArraySeven[5]
            destinationVC.address8 = dinnerArrayEight[5]
            destinationVC.address9 = dinnerArrayNine[5]
            destinationVC.address10 = dinnerArrayTen[5]

            
            destinationVC.restaurantCount = dinnerCount
            
        }
        if segue.identifier == "drinksSegue" {
            
            let destinationVC = segue.destination as! TableViewController
            
            let dataTest = firestoreData[0]
            let drinksCount = dataTest.drinksNumber
            
            destinationVC.restaurantName1 = dataTest.one
            destinationVC.restaurantName2 = dataTest.Two
            destinationVC.restaurantName3 = dataTest.drinksTimeOne
            destinationVC.restaurantName4 = drinksArrayFour[0]
            destinationVC.restaurantName5 = drinksArrayFive[0]
            destinationVC.restaurantName6 = drinksArraySix[0]
            destinationVC.restaurantName7 = drinksArraySeven[0]
            destinationVC.restaurantName8 = drinksArrayEight[0]
            destinationVC.restaurantName9 = drinksArrayNine[0]
            destinationVC.restaurantName10 = drinksArrayTen[0]


            
            destinationVC.picture1 = dataTest.Two
            destinationVC.picture2 = dataTest.Two
            destinationVC.picture3 = drinksArrayThree[1]
            destinationVC.picture4 = drinksArrayFour[1]
            destinationVC.picture5 = drinksArrayFive[1]
            destinationVC.picture6 = drinksArraySix[1]
            destinationVC.picture7 = drinksArraySeven[1]
            destinationVC.picture8 = drinksArrayEight[1]
            destinationVC.picture9 = drinksArrayNine[1]
            destinationVC.picture10 = drinksArrayTen[1]

            
            
            destinationVC.text1 = drinksArrayOne[2]
            destinationVC.text2 = drinksArrayTwo[2]
            destinationVC.text3 = drinksArrayThree[2]
            destinationVC.text4 = drinksArrayFour[2]
            destinationVC.text5 = drinksArrayFive[2]
            destinationVC.text6 = drinksArraySix[2]
            destinationVC.text7 = drinksArraySeven[2]
            destinationVC.text8 = drinksArrayEight[2]
            destinationVC.text9 = drinksArrayNine[2]
            destinationVC.text10 = drinksArrayTen[2]
            
            
            
            destinationVC.when1 = drinksArrayOne[3]
            destinationVC.when2 = drinksArrayTwo[3]
            destinationVC.when3 = drinksArrayThree[3]
            destinationVC.when4 = drinksArrayFour[3]
            destinationVC.when5 = drinksArrayFive[3]
            destinationVC.when6 = drinksArraySix[3]
            destinationVC.when7 = drinksArraySeven[3]
            destinationVC.when8 = drinksArrayEight[3]
            destinationVC.when9 = drinksArrayNine[3]
            destinationVC.when10 = drinksArrayTen[3]
            
            
            
            destinationVC.details1 = drinksArrayOne[4]
            destinationVC.details2 = drinksArrayTwo[4]
            destinationVC.details3 = drinksArrayThree[4]
            destinationVC.details4 = drinksArrayFour[4]
            destinationVC.details5 = drinksArrayFive[4]
            destinationVC.details6 = drinksArraySix[4]
            destinationVC.details7 = drinksArraySeven[4]
            destinationVC.details8 = drinksArrayEight[4]
            destinationVC.details9 = drinksArrayNine[4]
            destinationVC.details10 = drinksArrayTen[4]
            
            
            
            destinationVC.address1 = drinksArrayOne[5]
            destinationVC.address2 = drinksArrayTwo[5]
            destinationVC.address3 = drinksArrayThree[5]
            destinationVC.address4 = drinksArrayFour[5]
            destinationVC.address5 = drinksArrayFive[5]
            destinationVC.address6 = drinksArraySix[5]
            destinationVC.address7 = drinksArraySeven[5]
            destinationVC.address8 = drinksArrayEight[5]
            destinationVC.address9 = drinksArrayNine[5]
            destinationVC.address10 = drinksArrayTen[5]
            
            
            destinationVC.restaurantCount = drinksCount
        }
    }
    
        }
