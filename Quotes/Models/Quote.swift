//
//  Quote.swift
//  Quotes
//
//  Created by Sebastian Ortiz Velez on 21/10/2018.
//  Copyright © 2018 Sebastian Ortiz Velez. All rights reserved.
//

import Foundation

struct DailyQuote: Codable {
    let success: Success
    let contents: Contents
}

struct Contents: Codable {
    let quotes: [Quote]
    let copyright: String
}

struct Quote: Codable {
    let quote, author, length: String
    let tags: [String]
    let category, title, date : String
}

struct Success: Codable {
    let total: Int
}
