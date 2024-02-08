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
        .foregroundColor(useRedText ? .red : .blue)
    }
}

#Preview {
    ConditionalModifier_Demo()
}
