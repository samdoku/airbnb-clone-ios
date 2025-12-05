//
//  ContentView.swift
//  airbnb
//
//  Created by Sam on 12/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            HStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Spacer()
                Text("Hello samyz")
            }.background(.red)
    }
}

#Preview {
    ContentView()
}
