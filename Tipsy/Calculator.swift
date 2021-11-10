//
//  Calculator.swift
//  Tipsy
//
//  Created by fernando babonoyaba on 11/10/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Calculator {
    var userInfo: UserInfo?
    var tipValue = 0.1
    var billWithTip = 0.0
    var totalPerPerson = 0.0
    
    mutating func setUserTip(tip: String){
        let value = tip.dropLast()
        tipValue = ((Double(value) ?? 10.0) / 100)
    }
    
    mutating func getTotal(billtotal: String?, split: String?){
        if let billTValue = billtotal{
            let billValueDouble = Double(billTValue)
            billWithTip =  billValueDouble! * tipValue
            billWithTip += billValueDouble!
        }
        if let splitValue = split{
            totalPerPerson = billWithTip / Double(splitValue)!

        }
    }
    
    func getTotalPerPerson() -> String{
        return String(format: "%.2f", totalPerPerson)
    }
    
    func getPercentage() -> String{
        return String(tipValue * 100)
    }
    
}
