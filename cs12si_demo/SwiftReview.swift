//
//  SwiftReview.swift
//  cs12si_demo
//
//  Created by Steven Le on 4/13/24.
//

import Foundation

func learningVariables() {
    // How to set constants (calues can't be changed)
    print("\nLearning Variables")
    let name1 = "Charlie"
    let name2: String = "Doug"
    print(name1)
    print(name2)
    
    // name1 = "Steven"  // YOU CANNOT DO THIS. IT WILL GIVE YOU CAN ERROR

    // how to set variables (values can be changed)
    var isGameOver = false
    var isAuthenticated: Bool = false
    print("isGameOver: " + String(isGameOver))
    print("isAuthenticated: ", isAuthenticated)

    // overriding variable values
    isGameOver.toggle()
    print("isGameOver: \(isGameOver)")
    isAuthenticated = true;
    print("isAuthenticated: \(isAuthenticated)")
}

func learningForLoops() {
    print("\nLearning For Loops")
    // Traditional for-loop for iterating over a range
    print("Traditional for-loop:")
    for index in 1...5 {
        print("Current Index: \(index)")
    }
    
    // Using a for-loop to iterate over an array (foreach loop)
    print("\nForeach loop with an array:")
    let names = ["Charlie", "Doug", "Steven"]
    for name in names {
        print("Hello, \(name)!")
    }
}




