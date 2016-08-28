//
//  ViewController.swift
//  miraclepill
//
//  Created by Adam Libunao on 2016-08-26.
//  Copyright © 2016 Adamazing. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
// above we added UIPickerViewDataSource UIPickerViewDelegate to we added a UIpicker
    
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var stateActionBtm: UIButton!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryTxt: UITextField!
    @IBOutlet weak var zipCodeTxt: UITextField!
    @IBOutlet weak var zipCodeLbl: UILabel!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var fullNameLbl: UILabel!
    
    @IBOutlet weak var fullNameTxt: UITextField!
    @IBOutlet weak var StreetAddressLbl: UILabel!
    @IBOutlet weak var streetLbl: UITextField!
    
    @IBOutlet weak var CityLbl: UILabel!
    
    @IBOutlet weak var cityTxt: UITextField!
    @IBOutlet weak var StateTxt: UILabel!
    
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var success: UIImageView!
    
    let states = ["Alaska", "California", "Maine", "New York", "New Orleans", "Florida"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource  = self // <--- we then defined the data as manual
        statePicker.delegate = self  // <--- we then defined the data as manual
        
        
        
        self.view.backgroundColor = UIColor.white //<--- change the default back color code
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonFunc(_ sender: AnyObject) {
        statePicker.isHidden = false
        countryLbl.isHidden = true
        countryTxt.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeTxt.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
 
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         stateActionBtm.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryTxt.isHidden = false
        countryLbl.isHidden = false
        zipCodeTxt.isHidden = false
        zipCodeLbl.isHidden = false
        
    }

    
    @IBAction func PurchasePills(_ sender: AnyObject) {
        
        statePicker.isHidden = true
        stateActionBtm.isHidden = true
        countryLbl.isHidden = true
        countryTxt.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeTxt.isHidden = true
        
        fullNameTxt.isHidden = true
        streetLbl.isHidden = true
        StreetAddressLbl.isHidden = true
        cityTxt.isHidden = true
        CityLbl.isHidden = true
        countryTxt.isHidden = true
        countryLbl.isHidden = true
        buyNowBtn.isHidden = true
        fullNameLbl.isHidden = true
        stateLbl.isHidden = true
        success.isHidden = false
        
        
    }
    
}



