//
//  ViewController.swift
//  Localization
//
//  Created by 高橋京介 on 2015/11/20.
//  Copyright © 2015年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBAction func sayHello(sender: UIButton) {
        label.text = NSLocalizedString("Hello", comment: "")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

