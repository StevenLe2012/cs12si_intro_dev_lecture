//
//  ContentView.swift
//  cs12si_demo
//
//  Created by Steven Le on 4/13/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        VStack {
//            Model3D(named: "Scene", bundle: realityKitContentBundle)
//                .padding(.bottom, 50)

            Text("Hello, world!")
            
            Button("Test Function") {
                learningVariables()
                learningForLoops()
            }
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
