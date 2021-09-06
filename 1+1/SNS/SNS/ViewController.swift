//
//  ViewController.swift
//  SNS
//
//  Created by watari on 2016/04/11.
//  Copyright © 2016年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    @IBAction func showActivityView(sender: UIBarButtonItem) {
        let controller = UIActivityViewController(activityItems: [imageview.image!], applicationActivities: nil)
        self.presentViewController(controller, animated: true, completion: nil)
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

