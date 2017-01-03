//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Venkata Sadineni on 1/2/17.
//  Copyright © 2017 Venkata Sadineni. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    var definition = "NO definition"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //print(definition)
        definitionLabel.text = definition
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
}
