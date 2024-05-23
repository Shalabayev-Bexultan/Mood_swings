//
//  JournalEntry.swift
//  Mood swings
//
//  Created by Bexultan Shalabayev on 14.04.2024.
//

import Foundation
import SwiftData

@Model
final class JournalEntry{
    var title: String = ""
    var text: String = ""
    var rating: Double = 1
    var date: Date = Date()
    
    init(title: String, text: String, rating: Double, date: Date) {
        self.title = title
        self.text = text
        self.rating = rating
        self.date = date
    }
    
}


//let journalEntries:[JournalEntry] = [
//    JournalEntry(title: "A graeat day", text: "djffosjfidsfosjfidsfosjfidsfosjfidsfosjfidsfosjfidsfosjfidsfosjfidsosjfidsjof", rating: 4, date: Date()),
//    JournalEntry(title: "A ok day", text: "dkikifosjfidsfosjfidsfosjfidsfosjfidsfosjfidsfosjfidsfosjfidskikik", rating: 3, date: Date.now.addingTimeInterval(-120000000)),
//    JournalEntry(title: "A nice", text: "2332fosjfidsfosjfidsfosjfidsfosjfidsfosjfidsfosjfidsfosjfids3sjof", rating: 2, date: Date.now.addingTimeInterval(-120000)),
//    JournalEntry(title: "Adss", text: "djfosjfofosjfidsfosjfidsfosjfidsfosjfidsfosjfidsfosjfids556567yuyfjdidsjof", rating: 5, date:Date.now.addingTimeInterval(-12065400))
//]
