//
//  Quote.swift
//  Quotes
//
//  Created by Sebastian Ortiz Velez on 21/10/2018.
//  Copyright © 2018 Sebastian Ortiz Velez. All rights reserved.
//

import Foundation

class Quote: Codable {
    
    let quote: String
    let author: String
    let cat: String
    
    init(quote: String, author: String, cat: String) {
        self.quote = quote
        self.author = author
        self.cat = cat
    }    
}
