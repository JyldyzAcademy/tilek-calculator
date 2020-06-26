//
//  ViewController.swift
//  CALCULATOR
//
//  Created by Tilek Sulaymanbekov on 6/24/20.
//  Copyright © 2020 Tilek Sulaymanbekov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var priceText: UITextField!
    @IBOutlet weak var taxText: UITextField!
    @IBOutlet weak var priceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        priceLabel.text = ""
        
    }

    @IBAction func calculateTotalPrice(_ sender: Any) {
        
        guard let newPriceText = priceText.text, let newTaxText = taxText.text else {
            return
        }
        
        guard let doublePriceText = Double(newPriceText), let doubleTaxText = Double(newTaxText) else {
            return
        }
        
        let totalSaleTax = (doublePriceText * doubleTaxText)/100
        let totalPrice = doublePriceText + totalSaleTax
        
        priceLabel.text = "$ \(totalPrice)"
        
    }

}

