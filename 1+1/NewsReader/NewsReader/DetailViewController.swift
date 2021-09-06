//
//  DetailViewController.swift
//  NewsReader
//
//  Created by watari on 2016/04/17.
//  Copyright © 2016年 mycompany. All rights reserved.
//

import UIKit

class DetailViewController : UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    var link:String!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        if let url = NSURL(string: self.link) {
            let request = NSURLRequest(URL:url)
            self.webView.loadRequest(request)
        }
    }
}
