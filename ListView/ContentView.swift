//
//  ContentView.swift
//  ListView
//
//  Created by Shah Md Imran Hossain on 4/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                
                Button("Add Numbers") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .padding()
            .navigationTitle("onDelete()")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                EditButton()
            }
        }
    }
}

extension ContentView {
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
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
