//
//  ViewController.swift
//  Quotes
//
//  Created by Sebastian Ortiz Velez on 21/10/2018.
//  Copyright © 2018 Sebastian Ortiz Velez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //UI ELEMENTS
    @IBOutlet weak var lbl_quote: UILabel!
    
    @IBOutlet weak var lbl_author: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        DownloadQuote()
    }
    
    func DownloadQuote()
    {
        let urlString = "http://quotes.rest/qod.json"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            
            if error != nil {
                print("Invalid Url")
            }
    
            guard let data = data else { return }
            
            //Implement JSON decoding and parsing
            do {
                
                let articlesData = try JSONDecoder().decode(DailyQuote.self, from: data)
                
                DispatchQueue.main.async {
                    
//                    self.lbl_quote.text = articlesData.contents[0].quotes[0].quote
//                    
//                    self.lbl_quote.text = articlesData.contents.quotes[0].author
                }
                
            } catch let jsonError {
                print(jsonError)
            }
            }.resume()
    }
}
