//
//  MyContentView.swift
//  cs12si_demo
//
//  Created by Steven Le on 4/13/24.
//

import SwiftUI

struct MyContentView: View {
    @State private var counter = 0
    
    var body: some View {
        // How to use States
        VStack {
            Text("Counter: \(counter)")
//                .font(.system(size: 45)) // Sets the font size to 45
                .font(.title)
//                .foregroundColor(.red) // Changawdses the text color to blue
//                .background(.blue) // Sets the background color to yellow
//                .fontWeight(.bold) // Makes the text bold
//                .underline() // Adds an underline
//                .strikethrough() // Adds a strikethrough
//                .padding() // Adds default padding around the text
            

            Button("Increment") {
                counter += 1
            }
        }
        .padding()
        
//        LearningBinding(counter: $counter)
        
//        LearningList()
        
//        LearningNavigation()
        
//        ChooseColorNav()
    }
}

// Learning Binding w/ State
struct LearningBinding: View {
    @Binding var counter: Int
    var body: some View {
        VStack {
            Text("Counter: \(counter)")
            Button("Increment") {
                counter += 1
            }
        }
    }
}

struct LearningList: View {
    let items = ["Item 1", "Item 2", "Item 3"]

    var body: some View {
        List(items, id: \.self) { item in
            Text(item)
        }
        .padding(10)
        .padding(.top, 50)
    }
}

struct LearningNavigation: View {
    var body: some View {
        NavigationStack {
            VStack{
                NavigationLink(destination: DetailView()) {
                    Text("Go to Detail View")
                }
                NavigationLink(destination: LearningList()) {
                    Text("Go to Learning List")
                }
                NavigationLink(destination: DetailView()) {
                    Text("Go to DetailView")
                }
            }
            .navigationTitle("Main View")
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("Welcome to the Detail View!")
    }
}

struct ChooseColorNav: View {
    var body: some View {
        List {
            NavigationLink("Mint", value: Color.mint)
            NavigationLink("Pink", value: Color.pink)
            NavigationLink("Teal", value: Color.teal)
        }
        .navigationDestination(for: Color.self) { color in
            ColorDetail(color: color)
        }
        .navigationTitle("Colors")
    }
}

struct ColorDetail: View {
    var color: Color

    var body: some View {
        Text("Now showing \(color.description)")
    }
}


#Preview(windowStyle: .automatic) {
    MyContentView()
}

