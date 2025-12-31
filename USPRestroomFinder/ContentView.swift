//
//  ContentView.swift
//  USPRestroomFinder
//
//  Created by joe on 12/28/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.httpClient) private var httpClient
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(\.httpClient, RestroomClient())
}
