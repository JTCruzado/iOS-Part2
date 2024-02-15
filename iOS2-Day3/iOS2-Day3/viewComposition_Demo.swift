//
//  viewComposition_Demo.swift
//  iOS2-Day3 - Part 2

//Custom Views

import SwiftUI

struct viewComposition_Demo: View {
    var body: some View {
        Text("Uncomment to view inside canvas")
        
        //Part 1: repeating the same modifiers for two identical text views
        /*
        VStack(spacing: 10) {
            Text("First")
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())
            Text("Second")
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())
        }
         */
        //Part 2: wrap them in a new custom view called CapsuleText that applies the shared styling
        /*
        var body: some View {
                VStack(spacing: 10) {
                    CapsuleText(text: "First")
                    CapsuleText(text: "Second")
                }
            }
         */
    }
}

struct CapsuleText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(Capsule())
    }
}

#Preview {
    viewComposition_Demo()
}
