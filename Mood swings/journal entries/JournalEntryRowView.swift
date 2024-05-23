//
//  JournalEntryRowView.swift
//  Mood swings
//
//  Created by Bexultan Shalabayev on 05.05.2024.
//

import SwiftUI

struct JournalEntryRowView: View {
    let rowJournalEntry: JournalEntry
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(rowJournalEntry.title)
                    .bold()
                Text("-")
                Text(rowJournalEntry.text)
                    .lineLimit(1)
                    .foregroundStyle(.secondary)
            }
            .padding(.bottom, 1)
            HStack{
                Text(rowJournalEntry.date, style: .date)
                Text(String(Int(rowJournalEntry.rating)))
            }
            .font(.caption)
        }
    }
}

#Preview {
    List{
            JournalEntryRowView(rowJournalEntry: JournalEntry(title: "A graeat day", text: "To n.", rating: 4, date: Date()))
    
    }
}
