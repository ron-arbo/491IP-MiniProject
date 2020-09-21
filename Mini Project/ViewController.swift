//
//  ViewController.swift
//  Mini Project
//
//  Created by Ronnie Arbo on 9/20/20.
//  Copyright © 2020 Ronnie Arbo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tipStepper.minimumValue = 10.0
        tipStepper.autorepeat = true
        tipStepper.stepValue = 5.0
        peopleStepper.minimumValue = 1.0
        self.priceField.delegate = self
    }

    @IBOutlet weak var appTitle: UITextField!
    @IBOutlet weak var priceField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipStepper: UIStepper!
    @IBAction func tipChanged(_ sender: Any) {
        tipLabel.text="\(tipStepper.value)"
    }
    
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var peopleStepper: UIStepper!
    @IBAction func peopleChanged(_ sender: Any) {
        peopleLabel.text = "\(peopleStepper.value)"
    }
    
    
    @IBOutlet weak var tipTitle: UILabel!
    @IBOutlet weak var peopleTitle: UILabel!
    @IBOutlet weak var pppLabel: UILabel!
    @IBOutlet weak var pppValue: UILabel!
    @IBOutlet weak var priceButton: UIButton!
    @IBAction func calculatePrice(_ sender: Any) {
        let price = Double(priceField.text!)
        let tip = tipStepper.value
        let divisor = peopleStepper.value
        let newPrice = price! + price!*(tip)/100.0
        let finalPrice = Double(newPrice)/divisor
        pppValue.text = String(finalPrice)
    }
}

