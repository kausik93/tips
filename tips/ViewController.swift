//
//  ViewController.swift
//  tips
//
//  Created by Kausik Venkat on 12/8/15.
//  Copyright © 2015 Kausik Venkat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var colorMode: UISegmentedControl!
    @IBOutlet weak var labelLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
        stepper.wraps = false
        stepper.autorepeat = true
        stepper.maximumValue = 10
        stepper.minimumValue = 1
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18, 0.2, 0.25]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let num_people = Double(Int(stepper.value).description)
        // print("1st\(valueLabel.text)")
        let tip = (billAmount * tipPercentage)/num_people!
        let total = (billAmount + tip)/num_people!
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = NSString(format: "$%.2f", tip) as String
        totalLabel.text = NSString(format: "$%.2f", total) as String
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func stepperValueChanged(sender: UIStepper) {
        valueLabel.text = Int(sender.value).description
        // print("2nd\(valueLabel.text)")
    }
    
    @IBAction func colorModeChanged(sender: AnyObject) {
        let value = colorMode.selectedSegmentIndex
        if (value == 0) {
            self.view.backgroundColor = UIColor.whiteColor()
            tipControl.tintColor = UIColor.blackColor()
            stepper.tintColor = UIColor.blackColor()
            valueLabel.textColor = UIColor.blackColor()
            tipLabel.textColor = UIColor.blackColor()
            valueLabel.textColor = UIColor.blackColor()
            labelLabel.textColor = UIColor.blackColor()
            billField.tintColor = UIColor.blackColor()
            colorMode.tintColor = UIColor.blackColor()
            
        } else if (value == 1) {
            self.view.backgroundColor = UIColor.blackColor()
            tipControl.tintColor = UIColor.whiteColor()
            stepper.tintColor = UIColor.whiteColor()
            valueLabel.textColor = UIColor.whiteColor()
            tipLabel.textColor = UIColor.whiteColor()
            valueLabel.textColor = UIColor.whiteColor()
            labelLabel.textColor = UIColor.whiteColor()
            billField.tintColor = UIColor.whiteColor()
            colorMode.tintColor = UIColor.whiteColor()
            
        } else if (value == 2) {
            self.view.backgroundColor = UIColor.orangeColor()
            tipControl.tintColor = UIColor.blueColor()
            stepper.tintColor = UIColor.blueColor()
            valueLabel.textColor = UIColor.blueColor()
            tipLabel.textColor = UIColor.blueColor()
            valueLabel.textColor = UIColor.blueColor()
            labelLabel.textColor = UIColor.blueColor()
            billField.tintColor = UIColor.blueColor()
            colorMode.tintColor = UIColor.blueColor()
            
        }
    }

}

