//
//  ListViewController.swift
//  NewsReader
//
//  Created by 高橋京介 on 2015/10/30.
//  Copyright © 2015年 mycompany. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        return cell
    }
}
