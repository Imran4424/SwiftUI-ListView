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
            List(people, id: \.self) {
                Text($0)
            }
            
            List {
                Text("Static row")
                
                ForEach(people, id: \.self) {
                    Text($0)
                }
                
                Text("Static row")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// 1. List - Static and dynamic
//List {
//    Section("Section 1") {
//        Text("Static row 1")
//        Text("Static row 2")
//    }
//
//    Section("Section 2") {
//        ForEach(0..<5) {
//            Text("Dynamic row \($0)")
//        }
//    }
//
//    Section("Section 3") {
//        Text("Static row 3")
//        Text("Static row 4")
//    }
//}


// 2. using list instead of ForEach
//List(0..<5) {
//    Text("Dynamic row \($0)")
//}
