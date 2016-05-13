//
//  ViewController.swift
//  AB_Tipping_Fancy
//
//  Created by Annette Brookman on 5/12/16.
//  Copyright © 2016 Annette Brookman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tip18Label: UILabel!
    @IBOutlet weak var tip20Label: UILabel!
    @IBOutlet weak var tip25Label: UILabel!
    @IBOutlet weak var total18Label: UILabel!
    @IBOutlet weak var total20Label: UILabel!
    @IBOutlet weak var total25Label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(sender: AnyObject) {
    
        let bill = Double(billField.text!) ?? 0
        let tipA = bill * 0.18
        let tipB = bill * 0.20
        let tipC = bill * 0.25
        let totalA = bill + tipA
        let totalB = bill + tipB
        let totalC = bill + tipC
        
        
        tip18Label.text = String(format: "$%.2f", tipA)
        tip20Label.text = String(format: "$%.2f", tipB)
        tip25Label.text = String(format: "$%.2f", tipC)
        total18Label.text = String(format: "$%.2f", totalA)
        total20Label.text = String(format: "$%.2f", totalB)
        total25Label.text = String(format: "$%.2f", totalC)
    }
    
}

