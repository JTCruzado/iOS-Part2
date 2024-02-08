//
//  ModifierOrder_Demo.swift
//  iOS2-Day3
//
//  Example 3
//

import SwiftUI

struct ModifierOrder_Demo: View {
    var body: some View {
        
        Text("Hello, world!")
            .padding()
            .background(.red)
            .padding()
            .background(.blue)
            .padding()
            .background(.green)
            .padding()
            .background(.yellow)
        
        Button("Press Me") {
            print("Button pressed!")
        }
        //modifier order matters
        .padding()
        .background(Color.green)
        .clipShape(Capsule())
    }

}

#Preview {
    ModifierOrder_Demo()
}
