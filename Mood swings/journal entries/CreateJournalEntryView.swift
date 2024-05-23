//
//  CreateJournalEntryView.swift
//  Mood swings
//
//  Created by Bexultan Shalabayev on 11.05.2024.
//

import SwiftUI

struct CreateJournalEntryView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    @State var title: String = ""
    @State var text: String = "type something here"
    @State var rating: Double = 1
    @State var date: Date = Date()
    
    
    var body: some View {
        NavigationStack{
            Form{
                TextField("Title", text: $title)
                DatePicker("Journal Date", selection: $date, displayedComponents: .date)
                Text(String(Int(rating)))
                Slider(value: $rating, in: 1...100)
                TextEditor(text: $text)
            }
            .navigationTitle("new Journal Entry")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancel"){
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Save"){
                        let newJournalEntry = JournalEntry(title: title, text: text, rating: rating, date: date)
                        modelContext.insert(newJournalEntry)
                        dismiss()
                    }
                }
            }
        }

    }
}

#Preview {
    CreateJournalEntryView()
}
