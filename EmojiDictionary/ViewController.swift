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
    var meaning = ["Salesforce CEO", "Sr Director-ATF-SeTI", "VP of Productvity Cloud", "Internal Developer productivity tools & infrastructure", "#1 CRM Company, Ranked #2 company to work for", "Automation Test Frameworks", "Selenium Test Infrastructure"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        theCoolTableView.dataSource = self
        theCoolTableView.delegate = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = people[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let senderVal = people[indexPath.row] + "-" + meaning[indexPath.row]
        //print(senderVal)
        performSegue(withIdentifier: "moveSegue", sender: senderVal)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.definition = sender as! String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

