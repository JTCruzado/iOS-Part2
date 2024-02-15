//
//  ConditionalModifier_Demo.swift
//  iOS2-Day3
//
//  Example 5.
//

import SwiftUI

struct ConditionalModifier_Demo: View {
    @State private var useRedText = false
    
    var body: some View {
        Button("I Change colors when clicked") {
            useRedText.toggle()
        }
        .padding()
        .background(useRedText ? .red : .blue)
        .foregroundColor(useRedText ? .blue : .red)
        .clipShape(Capsule())
        
    }
}

#Preview {
    ConditionalModifier_Demo()
}
