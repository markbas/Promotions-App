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
    var firestoreDrinksData: [drinksStructure] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let db = Firestore.firestore()
               
        func loadFirestoreData() {
            
            self.firestoreData = []
            self.firestoreDrinksData = []

            db.collection("collectionOne").getDocuments { (querySnapshot, error) in
              
              if let e = error {
                  print("There was an issue retrieving data from Firestore. \(e)")
              } else {
                  if let snapshotDocuments = querySnapshot?.documents {
                      for doc in snapshotDocuments {
                          let data = doc.data()
                          if let countDinner = data["countDinner"] as? Int,
                            let dinnerOneName = data["dinnerOneName"] as? String,
                            let dinnerOnePicture = data["dinnerOnePicture"] as? String,
                            let dinnerOneSummary = data["dinnerOneSummary"] as? String,
                            let dinnerOneTime = data["dinnerOneTime"] as? String,
                            let dinnerOneDetails = data["dinnerOneDetails"] as? String,
                            let dinnerOneAddress = data["dinnerOneAddress"] as? String,
                          let dinnerTwoName = data["dinnerTwoName"] as? String,
                          let dinnerTwoPicture = data["dinnerTwoPicture"] as? String,
                          let dinnerTwoSummary = data["dinnerTwoSummary"] as? String,
                          let dinnerTwoTime = data["dinnerTwoTime"] as? String,
                          let dinnerTwoDetails = data["dinnerTwoDetails"] as? String,
                          let dinnerTwoAddress = data["dinnerTwoAddress"] as? String,
                            let dinnerThreeName = data["dinnerThreeName"] as? String,
                          let dinnerThreePicture = data["dinnerThreePicture"] as? String,
                          let dinnerThreeSummary = data["dinnerThreeSummary"] as? String,
                          let dinnerThreeTime = data["dinnerThreeTime"] as? String,
                          let dinnerThreeDetails = data["dinnerThreeDetails"] as? String,
                          let dinnerThreeAddress = data["dinnerThreeAddress"] as? String,
                          let dinnerFourName = data["dinnerFourName"] as? String,
                          let dinnerFourPicture = data["dinnerFourPicture"] as? String,
                          let dinnerFourSummary = data["dinnerFourSummary"] as? String,
                          let dinnerFourTime = data["dinnerFourTime"] as? String,
                          let dinnerFourDetails = data["dinnerFourDetails"] as? String,
                          let dinnerFourAddress = data["dinnerFourAddress"] as? String,
                          let dinnerFiveName = data["dinnerFiveName"] as? String,
                          let dinnerFivePicture = data["dinnerFivePicture"] as? String,
                          let dinnerFiveSummary = data["dinnerFiveSummary"] as? String,
                          let dinnerFiveTime = data["dinnerFiveTime"] as? String,
                          let dinnerFiveDetails = data["dinnerFiveDetails"] as? String,
                          let dinnerFiveAddress = data["dinnerFiveAddress"] as? String,
                          let dinnerSixName = data["dinnerSixName"] as? String,
                          let dinnerSixPicture = data["dinnerSixPicture"] as? String,
                          let dinnerSixSummary = data["dinnerSixSummary"] as? String,
                          let dinnerSixTime = data["dinnerSixTime"] as? String,
                          let dinnerSixDetails = data["dinnerSixDetails"] as? String,
                          let dinnerSixAddress = data["dinnerSixAddress"] as? String,
                          let dinnerSevenName = data["dinnerSevenName"] as? String,
                          let dinnerSevenPicture = data["dinnerSevenPicture"] as? String,
                          let dinnerSevenSummary = data["dinnerSevenSummary"] as? String,
                          let dinnerSevenTime = data["dinnerSevenTime"] as? String,
                          let dinnerSevenDetails = data["dinnerSevenDetails"] as? String,
                          let dinnerSevenAddress = data["dinnerSevenAddress"] as? String,
                          let dinnerEightName = data["dinnerEightName"] as? String,
                          let dinnerEightPicture = data["dinnerEightPicture"] as? String,
                          let dinnerEightSummary = data["dinnerEightSummary"] as? String,
                          let dinnerEightTime = data["dinnerEightTime"] as? String,
                          let dinnerEightDetails = data["dinnerEightDetails"] as? String,
                          let dinnerEightAddress = data["dinnerEightAddress"] as? String,
                          let dinnerNineName = data["dinnerNineName"] as? String,
                          let dinnerNinePicture = data["dinnerNinePicture"] as? String,
                          let dinnerNineSummary = data["dinnerNineSummary"] as? String,
                          let dinnerNineTime = data["dinnerNineTime"] as? String,
                          let dinnerNineDetails = data["dinnerNineDetails"] as? String,
                          let dinnerNineAddress = data["dinnerNineAddress"] as? String,
                          let dinnerTenName = data["dinnerTenName"] as? String,
                          let dinnerTenPicture = data["dinnerTenPicture"] as? String,
                          let dinnerTenSummary = data["dinnerTenSummary"] as? String,
                          let dinnerTenTime = data["dinnerTenTime"] as? String,
                          let dinnerTenDetails = data["dinnerTenDetails"] as? String,
                          let dinnerTenAddress = data["dinnerTenAddress"] as? String {
                            
                            let newMessage = Structure(countDinner: countDinner,
                                dinnerOneName: dinnerOneName, dinnerOnePicture: dinnerOnePicture, dinnerOneSummary: dinnerOneSummary, dinnerOneTime: dinnerOneTime, dinnerOneDetails: dinnerOneDetails, dinnerOneAddress: dinnerOneAddress,
                                dinnerTwoName: dinnerTwoName, dinnerTwoPicture: dinnerTwoPicture, dinnerTwoSummary: dinnerTwoSummary, dinnerTwoTime: dinnerTwoTime, dinnerTwoDetails: dinnerTwoDetails, dinnerTwoAddress: dinnerTwoAddress,
                                dinnerThreeName: dinnerThreeName, dinnerThreePicture: dinnerThreePicture, dinnerThreeSummary: dinnerThreeSummary, dinnerThreeTime: dinnerThreeTime, dinnerThreeDetails: dinnerThreeDetails, dinnerThreeAddress: dinnerThreeAddress,
                                dinnerFourName: dinnerFourName, dinnerFourPicture: dinnerFourPicture, dinnerFourSummary: dinnerFourSummary, dinnerFourTime: dinnerFourTime, dinnerFourDetails: dinnerFourDetails, dinnerFourAddress: dinnerFourAddress,
                                dinnerFiveName: dinnerFiveName, dinnerFivePicture: dinnerFivePicture, dinnerFiveSummary: dinnerFiveSummary, dinnerFiveTime: dinnerFiveTime, dinnerFiveDetails: dinnerFiveDetails, dinnerFiveAddress: dinnerFiveAddress,
                                dinnerSixName: dinnerSixName, dinnerSixPicture: dinnerSixPicture, dinnerSixSummary: dinnerSixSummary, dinnerSixTime: dinnerSixTime, dinnerSixDetails: dinnerSixDetails, dinnerSixAddress: dinnerSixAddress,
                                dinnerSevenName: dinnerSevenName, dinnerSevenPicture: dinnerSevenPicture, dinnerSevenSummary: dinnerSevenSummary, dinnerSevenTime: dinnerSevenTime, dinnerSevenDetails: dinnerSevenDetails, dinnerSevenAddress: dinnerSevenAddress,
                                dinnerEightName: dinnerEightName, dinnerEightPicture: dinnerEightPicture, dinnerEightSummary: dinnerEightSummary, dinnerEightTime: dinnerEightTime, dinnerEightDetails: dinnerEightDetails, dinnerEightAddress: dinnerEightAddress,
                                dinnerNineName: dinnerNineName, dinnerNinePicture: dinnerNinePicture, dinnerNineSummary: dinnerNineSummary, dinnerNineTime: dinnerNineTime, dinnerNineDetails: dinnerNineDetails, dinnerNineAddress: dinnerNineAddress,
                                dinnerTenName: dinnerTenName, dinnerTenPicture: dinnerTenPicture, dinnerTenSummary: dinnerTenSummary, dinnerTenTime: dinnerTenTime, dinnerTenDetails: dinnerTenDetails, dinnerTenAddress: dinnerTenAddress)
                            self.firestoreData.append(newMessage)}
                            
                            if let countDrinks = data["countDrinks"] as? Int,
                                let drinksOneName = data["drinksOneName"] as? String,
                                          let drinksOnePicture = data["drinksOnePicture"] as? String,
                                          let drinksOneSummary = data["drinksOneSummary"] as? String,
                                          let drinksOneTime = data["drinksOneTime"] as? String,
                                          let drinksOneDetails = data["drinksOneDetails"] as? String,
                                          let drinksOneAddress = data["drinksOneAddress"] as? String,
                                        let drinksTwoName = data["drinksTwoName"] as? String,
                                        let drinksTwoPicture = data["drinksTwoPicture"] as? String,
                                        let drinksTwoSummary = data["drinksTwoSummary"] as? String,
                                        let drinksTwoTime = data["drinksTwoTime"] as? String,
                                        let drinksTwoDetails = data["drinksTwoDetails"] as? String,
                                        let drinksTwoAddress = data["drinksTwoAddress"] as? String,
                                          let drinksThreeName = data["drinksThreeName"] as? String,
                                        let drinksThreePicture = data["drinksThreePicture"] as? String,
                                        let drinksThreeSummary = data["drinksThreeSummary"] as? String,
                                        let drinksThreeTime = data["drinksThreeTime"] as? String,
                                        let drinksThreeDetails = data["drinksThreeDetails"] as? String,
                                        let drinksThreeAddress = data["drinksThreeAddress"] as? String,
                                        let drinksFourName = data["drinksFourName"] as? String,
                                        let drinksFourPicture = data["drinksFourPicture"] as? String,
                                        let drinksFourSummary = data["drinksFourSummary"] as? String,
                                        let drinksFourTime = data["drinksFourTime"] as? String,
                                        let drinksFourDetails = data["drinksFourDetails"] as? String,
                                        let drinksFourAddress = data["drinksFourAddress"] as? String,
                                        let drinksFiveName = data["drinksFiveName"] as? String,
                                        let drinksFivePicture = data["drinksFivePicture"] as? String,
                                        let drinksFiveSummary = data["drinksFiveSummary"] as? String,
                                        let drinksFiveTime = data["drinksFiveTime"] as? String,
                                        let drinksFiveDetails = data["drinksFiveDetails"] as? String,
                                        let drinksFiveAddress = data["drinksFiveAddress"] as? String,
                                        let drinksSixName = data["drinksSixName"] as? String,
                                        let drinksSixPicture = data["drinksSixPicture"] as? String,
                                        let drinksSixSummary = data["drinksSixSummary"] as? String,
                                        let drinksSixTime = data["drinksSixTime"] as? String,
                                        let drinksSixDetails = data["drinksSixDetails"] as? String,
                                        let drinksSixAddress = data["drinksSixAddress"] as? String,
                                        let drinksSevenName = data["drinksSevenName"] as? String,
                                        let drinksSevenPicture = data["drinksSevenPicture"] as? String,
                                        let drinksSevenSummary = data["drinksSevenSummary"] as? String,
                                        let drinksSevenTime = data["drinksSevenTime"] as? String,
                                        let drinksSevenDetails = data["drinksSevenDetails"] as? String,
                                        let drinksSevenAddress = data["drinksSevenAddress"] as? String,
                                        let drinksEightName = data["drinksEightName"] as? String,
                                        let drinksEightPicture = data["drinksEightPicture"] as? String,
                                        let drinksEightSummary = data["drinksEightSummary"] as? String,
                                        let drinksEightTime = data["drinksEightTime"] as? String,
                                        let drinksEightDetails = data["drinksEightDetails"] as? String,
                                        let drinksEightAddress = data["drinksEightAddress"] as? String,
                                        let drinksNineName = data["drinksNineName"] as? String,
                                        let drinksNinePicture = data["drinksNinePicture"] as? String,
                                        let drinksNineSummary = data["drinksNineSummary"] as? String,
                                        let drinksNineTime = data["drinksNineTime"] as? String,
                                        let drinksNineDetails = data["drinksNineDetails"] as? String,
                                        let drinksNineAddress = data["drinksNineAddress"] as? String,
                                        let drinksTenName = data["drinksTenName"] as? String,
                                        let drinksTenPicture = data["drinksTenPicture"] as? String,
                                        let drinksTenSummary = data["drinksTenSummary"] as? String,
                                        let drinksTenTime = data["drinksTenTime"] as? String,
                                        let drinksTenDetails = data["drinksTenDetails"] as? String,
                                        let drinksTenAddress = data["drinksTenAddress"] as? String {
                                
                                let firestoreDrinks = drinksStructure(countDrinks: countDrinks,
                                drinksOneName: drinksOneName, drinksOnePicture: drinksOnePicture, drinksOneSummary: drinksOneSummary, drinksOneTime: drinksOneTime, drinksOneDetails: drinksOneDetails, drinksOneAddress: drinksOneAddress,
                                drinksTwoName: drinksTwoName, drinksTwoPicture: drinksTwoPicture, drinksTwoSummary: drinksTwoSummary, drinksTwoTime: drinksTwoTime, drinksTwoDetails: drinksTwoDetails, drinksTwoAddress: drinksTwoAddress,
                                drinksThreeName: drinksThreeName, drinksThreePicture: drinksThreePicture, drinksThreeSummary: drinksThreeSummary, drinksThreeTime: drinksThreeTime, drinksThreeDetails: drinksThreeDetails, drinksThreeAddress: drinksThreeAddress,
                                drinksFourName: drinksFourName, drinksFourPicture: drinksFourPicture, drinksFourSummary: drinksFourSummary, drinksFourTime: drinksFourTime, drinksFourDetails: drinksFourDetails, drinksFourAddress: drinksFourAddress,
                                drinksFiveName: drinksFiveName, drinksFivePicture: drinksFivePicture, drinksFiveSummary: drinksFiveSummary, drinksFiveTime: drinksFiveTime, drinksFiveDetails: drinksFiveDetails, drinksFiveAddress: drinksFiveAddress,
                                drinksSixName: drinksSixName, drinksSixPicture: drinksSixPicture, drinksSixSummary: drinksSixSummary, drinksSixTime: drinksSixTime, drinksSixDetails: drinksSixDetails, drinksSixAddress: drinksSixAddress,
                                drinksSevenName: drinksSevenName, drinksSevenPicture: drinksSevenPicture, drinksSevenSummary: drinksSevenSummary, drinksSevenTime: drinksSevenTime, drinksSevenDetails: drinksSevenDetails, drinksSevenAddress: drinksSevenAddress,
                                drinksEightName: drinksEightName, drinksEightPicture: drinksEightPicture, drinksEightSummary: drinksEightSummary, drinksEightTime: drinksEightTime, drinksEightDetails: drinksEightDetails, drinksEightAddress: drinksEightAddress,
                                drinksNineName: drinksNineName, drinksNinePicture: drinksNinePicture, drinksNineSummary: drinksNineSummary, drinksNineTime: drinksNineTime, drinksNineDetails: drinksNineDetails, drinksNineAddress: drinksNineAddress,
                                drinksTenName: drinksTenName, drinksTenPicture: drinksTenPicture, drinksTenSummary: drinksTenSummary, drinksTenTime: drinksTenTime, drinksTenDetails: drinksTenDetails, drinksTenAddress: drinksTenAddress)
                                
                                self.firestoreDrinksData.append(firestoreDrinks)
                            }
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

        let dinnerData = firestoreData[0]
        let drinksData = firestoreDrinksData[0]
        
        if segue.identifier == "dinnerSegue" {
            
            let destinationVC = segue.destination as! TableViewController
           
            
            destinationVC.restaurantName1 = dinnerData.dinnerOneName
            destinationVC.restaurantName2 = dinnerData.dinnerTwoName
            destinationVC.restaurantName3 = dinnerData.dinnerThreeName
            destinationVC.restaurantName4 = dinnerData.dinnerFourName
            destinationVC.restaurantName5 = dinnerData.dinnerFiveName
            destinationVC.restaurantName6 = dinnerData.dinnerSixName
            destinationVC.restaurantName7 = dinnerData.dinnerSevenName
            destinationVC.restaurantName8 = dinnerData.dinnerEightName
            destinationVC.restaurantName9 = dinnerData.dinnerNineName
            destinationVC.restaurantName10 = dinnerData.dinnerTenName

            
            
            destinationVC.picture1 = dinnerData.dinnerOnePicture
            destinationVC.picture2 = dinnerData.dinnerTwoPicture
            destinationVC.picture3 = dinnerData.dinnerThreePicture
            destinationVC.picture4 = dinnerData.dinnerFourPicture
            destinationVC.picture5 = dinnerData.dinnerFivePicture
            destinationVC.picture6 = dinnerData.dinnerSixPicture
            destinationVC.picture7 = dinnerData.dinnerSevenPicture
            destinationVC.picture8 = dinnerData.dinnerEightPicture
            destinationVC.picture9 = dinnerData.dinnerNinePicture
            destinationVC.picture10 = dinnerData.dinnerTenPicture

            

            destinationVC.text1 = dinnerData.dinnerOneSummary
            destinationVC.text2 = dinnerData.dinnerTwoSummary
            destinationVC.text3 = dinnerData.dinnerThreeSummary
            destinationVC.text4 = dinnerData.dinnerFourSummary
            destinationVC.text5 = dinnerData.dinnerFiveSummary
            destinationVC.text6 = dinnerData.dinnerSixSummary
            destinationVC.text7 = dinnerData.dinnerSevenSummary
            destinationVC.text8 = dinnerData.dinnerEightSummary
            destinationVC.text9 = dinnerData.dinnerNineSummary
            destinationVC.text10 = dinnerData.dinnerTenSummary


            
            destinationVC.when1 = dinnerData.dinnerOneTime
            destinationVC.when2 = dinnerData.dinnerTwoTime
            destinationVC.when3 = dinnerData.dinnerThreeTime
            destinationVC.when4 = dinnerData.dinnerFourTime
            destinationVC.when5 = dinnerData.dinnerFiveTime
            destinationVC.when6 = dinnerData.dinnerSixTime
            destinationVC.when7 = dinnerData.dinnerSevenTime
            destinationVC.when8 = dinnerData.dinnerEightTime
            destinationVC.when9 = dinnerData.dinnerNineTime
            destinationVC.when10 = dinnerData.dinnerTenTime


            
            destinationVC.details1 = dinnerData.dinnerOneDetails
            destinationVC.details2 = dinnerData.dinnerTwoDetails
            destinationVC.details3 = dinnerData.dinnerThreeDetails
            destinationVC.details4 = dinnerData.dinnerFourDetails
            destinationVC.details5 = dinnerData.dinnerFiveDetails
            destinationVC.details6 = dinnerData.dinnerSixDetails
            destinationVC.details7 = dinnerData.dinnerSevenDetails
            destinationVC.details8 = dinnerData.dinnerEightDetails
            destinationVC.details9 = dinnerData.dinnerNineDetails
            destinationVC.details10 = dinnerData.dinnerTenDetails

            
            
            destinationVC.address1 = dinnerData.dinnerOneAddress
            destinationVC.address2 = dinnerData.dinnerTwoAddress
            destinationVC.address3 = dinnerData.dinnerThreeAddress
            destinationVC.address4 = dinnerData.dinnerFourAddress
            destinationVC.address5 = dinnerData.dinnerFiveAddress
            destinationVC.address6 = dinnerData.dinnerSixAddress
            destinationVC.address7 = dinnerData.dinnerSevenAddress
            destinationVC.address8 = dinnerData.dinnerEightAddress
            destinationVC.address9 = dinnerData.dinnerNineAddress
            destinationVC.address10 = dinnerData.dinnerTenAddress

            
            destinationVC.restaurantCount = dinnerData.countDinner
            
        }
        if segue.identifier == "drinksSegue" {
            
            let destinationVC = segue.destination as! TableViewController
            
            
//            let drinksCount = dataTest.drinksNumber
            
            destinationVC.restaurantName1 = drinksData.drinksOneName
            destinationVC.restaurantName2 = drinksData.drinksTwoName
            destinationVC.restaurantName3 = drinksData.drinksThreeName
            destinationVC.restaurantName4 = drinksData.drinksFourName
            destinationVC.restaurantName5 = drinksData.drinksFiveName
            destinationVC.restaurantName6 = drinksData.drinksSixName
            destinationVC.restaurantName7 = drinksData.drinksSevenName
            destinationVC.restaurantName8 = drinksData.drinksEightName
            destinationVC.restaurantName9 = drinksData.drinksNineName
            destinationVC.restaurantName10 = drinksData.drinksTenName

            
            
            destinationVC.picture1 = drinksData.drinksOnePicture
            destinationVC.picture2 = drinksData.drinksTwoPicture
            destinationVC.picture3 = drinksData.drinksThreePicture
            destinationVC.picture4 = drinksData.drinksFourPicture
            destinationVC.picture5 = drinksData.drinksFivePicture
            destinationVC.picture6 = drinksData.drinksSixPicture
            destinationVC.picture7 = drinksData.drinksSevenPicture
            destinationVC.picture8 = drinksData.drinksEightPicture
            destinationVC.picture9 = drinksData.drinksNinePicture
            destinationVC.picture10 = drinksData.drinksTenPicture

            

            destinationVC.text1 = drinksData.drinksOneSummary
            destinationVC.text2 = drinksData.drinksTwoSummary
            destinationVC.text3 = drinksData.drinksThreeSummary
            destinationVC.text4 = drinksData.drinksFourSummary
            destinationVC.text5 = drinksData.drinksFiveSummary
            destinationVC.text6 = drinksData.drinksSixSummary
            destinationVC.text7 = drinksData.drinksSevenSummary
            destinationVC.text8 = drinksData.drinksEightSummary
            destinationVC.text9 = drinksData.drinksNineSummary
            destinationVC.text10 = drinksData.drinksTenSummary


            
            destinationVC.when1 = drinksData.drinksOneTime
            destinationVC.when2 = drinksData.drinksTwoTime
            destinationVC.when3 = drinksData.drinksThreeTime
            destinationVC.when4 = drinksData.drinksFourTime
            destinationVC.when5 = drinksData.drinksFiveTime
            destinationVC.when6 = drinksData.drinksSixTime
            destinationVC.when7 = drinksData.drinksSevenTime
            destinationVC.when8 = drinksData.drinksEightTime
            destinationVC.when9 = drinksData.drinksNineTime
            destinationVC.when10 = drinksData.drinksTenTime


            
            destinationVC.details1 = drinksData.drinksOneDetails
            destinationVC.details2 = drinksData.drinksTwoDetails
            destinationVC.details3 = drinksData.drinksThreeDetails
            destinationVC.details4 = drinksData.drinksFourDetails
            destinationVC.details5 = drinksData.drinksFiveDetails
            destinationVC.details6 = drinksData.drinksSixDetails
            destinationVC.details7 = drinksData.drinksSevenDetails
            destinationVC.details8 = drinksData.drinksEightDetails
            destinationVC.details9 = drinksData.drinksNineDetails
            destinationVC.details10 = drinksData.drinksTenDetails

            
            
            destinationVC.address1 = drinksData.drinksOneAddress
            destinationVC.address2 = drinksData.drinksTwoAddress
            destinationVC.address3 = drinksData.drinksThreeAddress
            destinationVC.address4 = drinksData.drinksFourAddress
            destinationVC.address5 = drinksData.drinksFiveAddress
            destinationVC.address6 = drinksData.drinksSixAddress
            destinationVC.address7 = drinksData.drinksSevenAddress
            destinationVC.address8 = drinksData.drinksEightAddress
            destinationVC.address9 = drinksData.drinksNineAddress
            destinationVC.address10 = drinksData.drinksTenAddress

            
            destinationVC.restaurantCount = drinksData.countDrinks
        }
    }
    
        }
