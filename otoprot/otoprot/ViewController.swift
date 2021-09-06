//
//  ViewController.swift
//  otoprot
//
//  Created by watari on 2016/09/11.
//  Copyright © 2016年 watari. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var outputText: UILabel!
    @IBOutlet weak var inputText: UITextField!

       override func viewDidLoad() {
        super.viewDidLoad()
        func textFieldShouldReturn(textField: UITextField) -> Bool {
            textField.resignFirstResponder();
            outputText.text = checkInputText(textField.text!)
            return true
        }
        // Do any additional setup after loading the view, typically from a nib.
        
        inputText?.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

func checkInputText(text: String) -> String {
if let number = Int(text) {
    if number % 2 == 0 {
return "偶数"
}
    else{
return"奇数"
}
}
else
{
    return"エラー" }
}