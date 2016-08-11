//
//  ViewController.swift
//  DebuggingExercise
//
//  Created by Hesham Abd-Elmegid on 7/19/16.
//  Copyright © 2016 CareerFoundry. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {

    var items: [String]?
    let itemsCount = 10

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        items = []
        var i = 1
        while i < itemsCount {
            items?.append("\(i)")
            i = i + 1
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailsViewController = segue.destinationViewController as! DetailsViewController
        detailsViewController.item = sender as? String
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsCount
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier", forIndexPath: indexPath)
        cell.textLabel?.text = items![indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("PushDetailsViewController", sender: items![indexPath.row])
    }

}

