//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Venkata Sadineni on 12/26/16.
//  Copyright © 2016 Venkata Sadineni. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  
    @IBOutlet weak var theCoolTableView: UITableView!
    
    var people = ["Marc Benioff", "Suresh Bhasyam", "Vanita", "Productvity", "Salesforce", "ATF", "SeTI"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        theCoolTableView.dataSource = self
        theCoolTableView.delegate = self
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = people[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


    
}

