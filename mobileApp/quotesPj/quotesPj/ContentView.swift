//
//  ContentView.swift
//  quotesPj
//
//  Created by H on 10/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Breaking Bad", systemImage: "tortoise") {
                Text("Breaking Bad View")
                    .toolbarBackgroundVisibility(.visible, for: .tabBar)
            }
            
            Tab("Better Call Saul", systemImage: "briefcase") {
                Text("Better Call Saul View")
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
