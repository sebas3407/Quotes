//
//  Quote.swift
//  Quotes
//
//  Created by Sebastian Ortiz Velez on 21/10/2018.
//  Copyright © 2018 Sebastian Ortiz Velez. All rights reserved.
//

import Foundation

class DailyQuote: Codable {
    let success: Success
    let contents: Contents
    
    init(success: Success, contents: Contents) {
        self.success = success
        self.contents = contents
    }
}

class Contents: Codable {
    let quotes: [Quote]
    let copyright: String
    
    init(quotes: [Quote], copyright: String) {
        self.quotes = quotes
        self.copyright = copyright
    }
}

class Quote: Codable {
    let quote, length, author: String
    let tags: [String]
    let category, date: String
    let permalink: String
    let title: String
    let background: String
    let id: String
    
    init(quote: String, length: String, author: String, tags: [String], category: String, date: String, permalink: String, title: String, background: String, id: String) {
        self.quote = quote
        self.length = length
        self.author = author
        self.tags = tags
        self.category = category
        self.date = date
        self.permalink = permalink
        self.title = title
        self.background = background
        self.id = id
    }
}

class Success: Codable {
    let total: Int
    
    init(total: Int) {
        self.total = total
    }
}
