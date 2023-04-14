//
//  ContentView.swift
//  ListView
//
//  Created by Shah Md Imran Hossain on 4/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // List - Static and dynamic
        // with the help of section we can customize list
        List {
            Section("Section 1") {
                Text("Static row 1")
                Text("Static row 2")
            }

            Section("Section 2") {
                ForEach(0..<5) {
                    Text("Dynamic row \($0)")
                }
            }

            Section("Section 3") {
                Text("Static row 3")
                Text("Static row 4")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
