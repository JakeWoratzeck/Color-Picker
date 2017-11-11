//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Jake Woratzeck on 11/11/17.
//  Copyright © 2017 Jake Woratzeck. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    let colorsArray = [Color(name: "Red", color: UIColor.red), Color(name: "Orange", color: UIColor.orange), Color(name: "Yellow", color: UIColor.yellow), Color(name: "Green", color: UIColor.green), Color(name: "Blue", color: UIColor.blue), Color(name: "Purple", color: UIColor.purple)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let initialIndex = 0
        
        //Set default color on load
        pickerView(picker, didSelectRow: initialIndex, inComponent: initialIndex)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorsArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorsArray[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colorsArray[row].name
        view.backgroundColor = colorsArray[row].color
    }


}
