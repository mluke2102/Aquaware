//
//  ViewController.swift
//  Aquaware
//
//  Created by Matt Luke on 10/24/19.
//  Copyright © 2019 MlukeApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var RecentView: UIView!
    @IBOutlet weak var WeeklyView: UIView!
    @IBOutlet weak var DailyView: UIView!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var recentIcon: UIImageView!
    @IBOutlet weak var recentLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        detailsLabel.lineBreakMode = .byWordWrapping
        detailsLabel.numberOfLines = 2
        
        
//        UserDefaults.standard.set
//        
        
        
        
        detailsLabel.text =
        """
        10 Minutes
        70 Litres
        """
        
        addButton.layer.cornerRadius = 15
        
        RecentView.layer.cornerRadius = 15
        RecentView.layer.masksToBounds = false
        RecentView.layer.shadowColor = UIColor.black.cgColor
        RecentView.layer.shadowOpacity = 0.05
        RecentView.layer.shadowOffset = .zero
        RecentView.layer.shadowRadius = 15
        
        WeeklyView.layer.cornerRadius = 15
        WeeklyView.layer.masksToBounds = false
        WeeklyView.layer.shadowColor = UIColor.black.cgColor
        WeeklyView.layer.shadowOpacity = 0.05
        WeeklyView.layer.shadowOffset = .zero
        WeeklyView.layer.shadowRadius = 15
        
        DailyView.layer.cornerRadius = 15
        DailyView.layer.masksToBounds = false
        DailyView.layer.shadowColor = UIColor.black.cgColor
        DailyView.layer.shadowOpacity = 0.05
        DailyView.layer.shadowOffset = .zero
        DailyView.layer.shadowRadius = 15
        
    }

    @IBAction func unwindTo(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source as? PresetViewController
        let choice = sourceViewController?.unwindChoice
        let defaults = UserDefaults.standard
        var array = defaults.stringArray(forKey: "items") ?? [String]()
        print(array)
        
        if choice == 0
        {
            array.append("WaterBottle")
            recentIcon.image = UIImage(named: "WaterBottle")
            recentLabel.text = "Water Bottle"
            detailsLabel.text =
            """
            1 Pint
            """
            defaults.set(array, forKey: "items")
        }
        else if choice == 1
        {
            array.append("WashHands")
            recentIcon.image = UIImage(named: "WashHands")
            recentLabel.text = "Wash Hands"
            detailsLabel.text =
            """
            20 seconds
            3 Quarts
            """
            defaults.set(array, forKey: "items")
        }
        else if choice == 2
        {
            array.append("Shower")
            recentIcon.image = UIImage(named: "Shower")
            recentLabel.text = "Shower"
            detailsLabel.text =
            """
            10 Minutes
            18 Litres
            """
            defaults.set(array, forKey: "items")
        }
        else if choice == 3
        {
            array.append("ToiletFlush")
            recentIcon.image = UIImage(named: "ToiletFlush")
            recentLabel.text =
            "Toilet Flush"
            detailsLabel.text =
            """
            2 Gallons
            """
            defaults.set(array, forKey: "items")
        }
        
        
        
        
        
        
        
    }
    
}

