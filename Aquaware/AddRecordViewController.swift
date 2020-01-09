//
//  AddRecordViewController.swift
//  Aquaware
//
//  Created by Matt Luke on 10/25/19.
//  Copyright © 2019 MlukeApps. All rights reserved.
//

import UIKit

class AddRecordViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let presets = ["Shower","Toilet Flush","Dishwasher","Washing Machine","Washing Hands","Refill Bottle"]

    @IBOutlet weak var presetPicker: UIPickerView!
    @IBOutlet weak var pickerBlurView: UIVisualEffectView!
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var dimBackground: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presetPicker.delegate = self
        presetPicker.dataSource = self
        
        confirmButton.layer.cornerRadius = 15
        
        pickerBlurView.layer.cornerRadius = 35
        pickerBlurView.layer.shadowRadius = 20
        pickerBlurView.layer.shadowOpacity = 0.2
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.3, delay: 0.1, options: UIView.AnimationOptions.curveEaseOut, animations: {self.dimBackground.alpha = 0.4})
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: UIView.AnimationOptions.curveEaseOut, animations: {self.dimBackground.alpha = 0.0})
    }
    
    
    @IBAction func confirmButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func tappedBackground(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return presets.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return presets[row]
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
