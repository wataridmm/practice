//
//  DetailViewController.swift
//  NewsReader
//
//  Created by 高橋京介 on 2015/10/30.
//  Copyright © 2015年 mycompany. All rights reserved.
//

import UIKit

class DetailViewController : UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    var link:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = NSURL(string: self.link) {
        let request = NSURLRequest(URL: url)
        self.webView.loadRequest(request)
        }
    }
}
