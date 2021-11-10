//
//  TotalScreen.swift
//  Tipsy
//
//  Created by fernando babonoyaba on 11/9/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class TotalScreen: UIViewController {

    @IBOutlet weak var totalPerPerson: UILabel!
    @IBOutlet weak var peopleAndPercentage: UILabel!
    
    var total: String? 
    var people: String?
    var percentage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPerPerson.text = total
        peopleAndPercentage.text = "Split between \(String(describing: people!)) people, with \(String(describing: percentage!))% tip."
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        dismiss(animated: true)
        
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
