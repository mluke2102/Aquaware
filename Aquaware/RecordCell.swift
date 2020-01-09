//
//  RecordCell.swift
//  Aquaware
//
//  Created by Matt Luke on 10/30/19.
//  Copyright © 2019 MlukeApps. All rights reserved.
//

import UIKit

class RecordCell: UITableViewCell {

    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var itemIcon: UIImageView!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var cellView: UIView!
    
    
    var addRecord: String = "WaterBottle"{
        didSet{
            if addRecord == "WaterBottle"
            {
                itemIcon.image = UIImage(named: "WaterBottle")
                itemLabel.text = "Water Bottle"
                detailsLabel.text =
                """
                1 Pint
                """
            }
            else if addRecord == "WashHands"
            {
                itemIcon.image = UIImage(named: "WashHands")
                itemLabel.text = "Wash Hands"
                detailsLabel.text =
                """
                20 seconds
                3 Quarts
                """
            }
            else if addRecord == "Shower"
            {
                itemIcon.image = UIImage(named: "Shower")
                itemLabel.text = "Shower"
                detailsLabel.text =
                """
                10 Minutes
                18 Litres
                """
            }
            else if addRecord == "ToiletFlush"
            {
                itemIcon.image = UIImage(named: "ToiletFlush")
                itemLabel.text = "Toilet Flush"
                detailsLabel.text =
                """
                2 Gallons
                """
            }
            
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cellView.layer.cornerRadius = 15
        cellView.layer.shadowRadius = 15
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
