//
//  ViewController.swift
//  Quotes
//
//  Created by Sebastian Ortiz Velez on 21/10/2018.
//  Copyright © 2018 Sebastian Ortiz Velez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_quote: UILabel!
    
    let quotes = ["Don't forget your possibilities", "All the gods, all the heavens, all the hells are within you"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl_quote.text = quotes[0]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func ShowQuotes(_ sender: Any) {
        
        lbl_quote.text = quotes[1]
        
    }
}

