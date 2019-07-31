//
//  CustomMessageCell.swift
//  Flash Chat
//
//  Created by Angela Yu on 30/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class CustomMessageCell: UITableViewCell {


    @IBOutlet var avatarImageView: UIImageView!
    @IBOutlet var messageBody: UILabel!
    @IBOutlet weak var promotionDescription: UILabel!
    @IBOutlet weak var backgroundCardView: UIView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code goes here
        
    backgroundCardView.layer.cornerRadius = 3.0
    
    backgroundCardView.layer.masksToBounds = false
        
    backgroundCardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.25).cgColor
        
    backgroundCardView.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        
    backgroundCardView.layer.shadowOpacity = 0.8
        
    }


}
