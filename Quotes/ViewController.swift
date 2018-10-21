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
    
    // STRUCTS
    var quoteBook: QuoteBook = QuoteBook()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var num: Int = Int.random(in: 0..<quoteBook.quotes.count)
        lbl_quote.text = quoteBook.quotes[num]
        DownloadQuote()
    }
    
    @IBAction func ShowQuotes(_ sender: Any) {
        
        lbl_quote.text = quoteBook.quotes[1]
    }
    
    func DownloadQuote()
    {
        let urlString = "https://talaikis.com/api/quotes/random/"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
    
            guard let data = data else { return }
            
            //Implement JSON decoding and parsing
            do {
                let articlesData = try JSONDecoder().decode(Quote.self, from: data)
                
                DispatchQueue.main.async {
                    print(articlesData.quote)
                }
                
                self.lbl_quote.text = articlesData.quote
            } catch let jsonError {
                print(jsonError)
            }
            }.resume()
    }
}
