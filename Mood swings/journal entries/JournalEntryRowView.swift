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
                ZStack {
                                    Rectangle()
                                        .fill(
                                            LinearGradient(
                                                gradient: Gradient(
                                                    colors: [
                                                        Color(hue: 0, saturation: 1, brightness: 1 - (rowJournalEntry.rating / 100)), // Red
                                                        Color(hue: 0.333, saturation: 1, brightness: 0.5 + (rowJournalEntry.rating / 200)) // Even brighter green
                                                    ]
                                                ),
                                                startPoint: .top,
                                                endPoint: .bottom
                                            )
                                        )
                                    Text(String(Int(rowJournalEntry.rating)))
                                        .foregroundColor(.white)
                                }
                .ignoresSafeArea()
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
