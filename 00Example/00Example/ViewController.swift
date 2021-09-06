//
//  ViewController.swift
//  OOExample
//
//  Created by Yoshi Nagase on 2015/11/01.
//  Copyright © 2015年 Yoshi Nagase. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var outputText: UILabel!
    @IBOutlet weak var outputCurrency: UILabel!
    
    var money = Money()
    var currency:String = "YEN"
    
    @IBAction func doConversionYEN(sender: UIButton) {
        currency = "YEN"
        outputCurrency.text = currency
    }
    @IBAction func doConversionEUR(sender: UIButton) {
        currency = "EUR"
        outputCurrency.text = currency
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        inputText?.delegate = self
        money = Money()
        money.setCurrency(cur: "USD")
        currency = "YEN"
        outputCurrency.text=currency
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        var convertAmount: Double = 0
        textField.resignFirstResponder();
        if let amount = Int((textField.text)!) {
            money.setAmount(inputMoney: Double(amount))
            money.setCurrency(cur: "USD")
            convertAmount = money.convert(cur: currency).getAmount()
            if currency == "YEN" {
                outputText.text = String(format: "%.0f", convertAmount)
            }
            else if currency == "EUR" {
                outputText.text = String(format: "%.2f", convertAmount)
            }
            outputCurrency.text = currency
        }
        else {
            outputText.text = " エラー"
        }
        return true
    }
}

class Money {
    var amount: Double = 0
    var currency: String = ""
    var rates: Dictionary<String, Double> = ["USDYEN": 120, "USDEUR": 1.2]
    func setAmount(inputMoney: Double) {
        amount = inputMoney
    }
    func setCurrency(cur: String) {
        currency = cur
    }
    func convert(cur: String) -> Money {
        let money = Money()
        money.setAmount(inputMoney: amount*rates[currency+cur]!)
        money.setCurrency(cur: cur)
        return money
    }
    func getAmount() -> Double {
        return amount
    }
}


