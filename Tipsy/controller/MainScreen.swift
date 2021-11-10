//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class MainScreen: UIViewController {
    
    var calculator = Calculator()

    @IBOutlet weak var billTotalTextField: UITextField!
    @IBOutlet weak var SplitLable: UILabel!
    @IBOutlet weak var leftTip: UIButton!
    @IBOutlet weak var centerTip: UIButton!
    @IBOutlet weak var rightTip: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipPressed(_ sender: UIButton) {
        billTotalTextField.resignFirstResponder()
        leftTip.isSelected = false
        centerTip.isSelected = false
        rightTip.isSelected = false
       
        
        sender.isSelected = true
        if let value = sender.currentTitle {
            calculator.setUserTip(tip: value)
        }
    
    }
    
    @IBAction func chooseSplit(_ sender: UIStepper) {
        SplitLable.text = String(format: "%.0f", sender.value)
        billTotalTextField.resignFirstResponder()
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        let billTotal = billTotalTextField.text
        let split = SplitLable.text
        
        calculator.getTotal(billtotal: billTotal, split: split)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let TotalScreen = segue.destination as? TotalScreen {
            TotalScreen.total = calculator.getTotalPerPerson()
            TotalScreen.people = SplitLable.text
            TotalScreen.percentage = calculator.getPercentage()
        }
    }
    
}

