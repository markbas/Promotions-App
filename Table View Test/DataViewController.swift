//
//  DataViewController.swift
//  Shoestring App
//
//  Created by user154425 on 1/28/20.
//  Copyright © 2020 user154425. All rights reserved.
//

import UIKit
import Firebase

class DataViewController: UIViewController {

    let db = Firestore.firestore()
    

    
    func retreiveDataOne() {
     
        nameTestRestaurant = ""
        
        let docRef = db.collection("names").document("names")
    
    docRef.getDocument { (document, error) in
        if let document = document, document.exists {
            let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
        //    self.nameTestRestaurant = ""
            self.nameTestRestaurant.append(dataDescription)
         //   print(dataDescription)
           // print(self.nameTestRestaurant)
            
        } else {
            print("Document does not exist")
        }
    }
       
     
        
        print(self.nameTestRestaurant)
    
    }
    
    //retreiveData()
    
    var nameTestRestaurant = ""
    
        
//    print(nameTestRestaurant)

    
    
    
    //func getData() {
        
      //  db.collection("names").getDocuments { (QuerySnapshot, error) in
        //    if let e = error {
          //      print("There was an error. \(e)")
    //        } else {
      //          if let snapshotDocuments = QuerySnapshot?.documents {
        //            for doc in snapshotDocuments {
          //              _ = doc.data()
            //            print(doc.data())
     //               }
       //         }
//        }
//    }
// }
    
    
//    func getRestaurantData() {
//
//        db.collection("names").document("names").getDocument { (document, error) in
//          if error == nil {
//             if document != nil && document!.exists {
//                  let documentData = document!.data()
//                print(documentData ?? String())
//          }
//         }
//        }
//
//            }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()

//        getRestaurantData()
  //      getData()
        
    //    let db = Firestore.firestore()
        
    //    let namesTest = db.collection("/names/names")
            
    //    let nameTest = db.collection("names").document("names").getDocument { (document, error) in
      //       if error == nil {
        //        if document != nil && document!.exists {
          //           let documentData = document!.data()
          //   }
          //  }
       // }
        // print(nameTest)
        
        
     }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
