//
//  ContentView.swift
//  ListView
//
//  Created by Shah Md Imran Hossain on 4/4/23.
//

import SwiftUI

struct ContentView: View {
    let people = ["Arongka", "Imran", "Soudha", "Sakib", "Shaira"]
    
    var body: some View {
        VStack {
            Section("Dynamic Row") {
                // using list instead of ForEach
                List(0..<5) {
                    Text("Dynamic row \($0)")
                }
            }
            
            Section("Showing array of list") {
                // using list instead of ForEach
                List(people, id: \.self) {
                    Text($0)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
