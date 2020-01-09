//
//  PresetViewController.swift
//  Aquaware
//
//  Created by Matt Luke on 10/25/19.
//  Copyright © 2019 MlukeApps. All rights reserved.
//

import UIKit

class PresetViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    
   
    
    @IBOutlet weak var ConfrimOutlet: UIButton!
    @IBOutlet weak var chooseButtonBlur: UIVisualEffectView!
    @IBOutlet weak var QuickAddCollection: UICollectionView!
    
    
    
    var quickAdds = [String]()
    var quickChoice = ""
    
    
    override func viewDidLoad() {
           super.viewDidLoad()

        
        
           QuickAddCollection.dataSource = self
           QuickAddCollection.delegate = self
           
        QuickAddCollection.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
           ConfrimOutlet.layer.cornerRadius = 15
//           chooseButtonBlur.layer.cornerRadius = 15
    
           quickAdds = ["WaterBottle","WashHands","Shower","ToiletFlush"]
           
       }
    
    
    @IBAction func ConfirmButton(_ sender: Any) {
        
        day.dateFormat = "dd"
        month.dateFormat = "mm"
        year.dateFormat = "yyyy"
        
        let dayResult = day.string(from: date)
        let monthResult = month.string(from: date)
        let yearResult = year.string(from: date)
        
        self.dismiss(animated: true)
        
    }
    
    let date = Date()
    let day = DateFormatter()
    let month = DateFormatter()
    let year = DateFormatter()
    var choiceText = ""
    var unwindChoice = 0
    
    
    func quickAdd(choice: Int)
    {
        
    }
    
    
 
    
    func quickAddAlert(choice: Int, choiceText: String)
    {
        let quickAddAlert = UIAlertController(title: "Quick Add", message: "Would you like to add \(choiceText)?", preferredStyle: .alert)

        quickAddAlert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: {(_: UIAlertAction!) in
            
            self.unwindChoice = choice
            
            self.performSegue(withIdentifier: "UnwindToVC", sender: self)
            
        }))
            
        
            
            quickAddAlert.addAction(UIAlertAction(title: "No", style: UIAlertAction.Style.default, handler: {(_: UIAlertAction!) in }))
            
        
        
        self.present(quickAddAlert, animated: true)
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         let quickAddChoice = indexPath.row
         
         if quickAddChoice == 0
         {
             quickAddAlert(choice: 0, choiceText: "Water Bottle")
         }
         else if quickAddChoice == 1
         {
             quickAddAlert(choice: 1, choiceText: "Wash Hands")
         }
         else if quickAddChoice == 2
         {
             quickAddAlert(choice: 2, choiceText: "Shower")
         }
         else if quickAddChoice == 3
         {
             quickAddAlert(choice: 3, choiceText: "Toilet Flush")
         }
         
     }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return quickAdds.count
       }
       
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           
        let quickAddCell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! QuickAddCell
        
        quickChoice = quickAdds[indexPath.row]
        
        quickAddCell.quickChoice = quickChoice
        quickAddCell.contentView.layer.masksToBounds = true
        
        return quickAddCell
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
