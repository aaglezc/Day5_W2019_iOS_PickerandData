//
//  ViewController.swift
//  Day5_W2019_iOS_PickerandData
//
//  Created by MacStudent on 2019-03-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    

    var countryList : [String] = [ "Canada","U.S.A.","Mexico","Guatemala","Honduras","Costa Rica","Panama","Colombia","Venezuela","Brazil"]
    
    let cityList : [String] = ["Ciudad de Mexico","Guadalajara","Monterrey"]
    
    @IBOutlet weak var pickerCountry: UIPickerView!
    @IBOutlet weak var lblCountryName: UIPickerView! //ignore
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // We need to assign the objet of the class of the protocols to to this ViewController class
        
        self.pickerCountry.delegate = self
        self.pickerCountry.dataSource = self
        
    }

    @IBAction func birthDatePicker(_ sender: UIDatePicker) {
        
        print(sender.date)
        for i in countryList
        {
            print(i)
        }
    }
    
    
    
    
    //Method to implement for protocols
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //return 1
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //return self.countryList.count
        
        if component == 0
        {
            return self.countryList.count
        }
        else if component == 1
        {
            return self.cityList.count
        }
        return 0
    }
    
    //to get thos func , type picker.XX and select the method desired
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //return "Component: \(component) - Row: \(row)"
        //return self.countryList[row]
        if component == 0
        {
            return self.countryList[row]
        }
        return self.cityList[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        //self.lblName.text = "Country Selected: " + self.countryList[row]
        
        self.lblName.text = self.countryList[row]
        
        self.lblName.text = "Country: \(self.countryList[self.pickerCountry.selectedRow(inComponent: 0)]), City: \(self.cityList[self.pickerCountry.selectedRow(inComponent: 1)])"
    }
    
    
}

