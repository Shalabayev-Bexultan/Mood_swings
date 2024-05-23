//
//  ContentView.swift
//  Mood swings
//
//  Created by Bexultan Shalabayev on 14.05.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Int = 1
    var body: some View {
        TabView(selection: $selection){
            AdviceView()
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("AI advice")
                }.tag(0)
            JournalEntriesListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("all notes")
                }.tag(1)
            ChartsView()
                .tabItem {
                    Image(systemName: "chart.bar.xaxis")
                    Text("charts")
                }.tag(2)
        }
    }
}

#Preview {
    ContentView()
}
