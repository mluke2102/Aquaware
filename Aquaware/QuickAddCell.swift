//
//  QuickAddCell.swift
//  Aquaware
//
//  Created by Matt Luke on 10/28/19.
//  Copyright © 2019 MlukeApps. All rights reserved.
//

import UIKit

class QuickAddCell: UICollectionViewCell {
    
    @IBOutlet weak var quickAddImage: UIImageView!
    @IBOutlet weak var quickAddLabel: UILabel!
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var labelText: UILabel!
    
    var image: UIImage = #imageLiteral(resourceName: "Shower")
    
    var quickChoice = "Water Bottle"
    {
        didSet{
            image = UIImage(named: quickChoice)! 
            quickAddImage.image = image
            buttonView.layer.cornerRadius = 15
            labelText.text = ""
            
            if quickChoice == "WaterBottle"
            {
                labelText.text = "Water Bottle"
            }
            else if quickChoice == "Shower"
            {
                labelText.text = "Shower"
            }
            else if quickChoice == "ToiletFlush"
            {
                labelText.text = "Toilet Flush"
            }
            else if quickChoice == "WashHands"
            {
                labelText.text = "Wash Hands"
            }
        }
        
        
        
    }
    
}
