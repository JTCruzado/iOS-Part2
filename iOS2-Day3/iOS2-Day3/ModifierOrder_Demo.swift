//
//  ModifierOrder_Demo.swift
//  iOS2-Day3
//
//  Example 3
//

import SwiftUI

struct ModifierOrder_Demo: View {
    var body: some View {
        HStack{
            Text("Fire, BBQ!")
                .padding()
                .background(.red)
                .padding()
                .background(.blue)
                .padding()
                .background(.green)
                .padding()
                .background(.yellow)
                .padding()
                .background(.purple)
            
            Button("Press Me") {
                print("Button pressed!")
            }
            //modifier order matters
            .padding()
            .background(Color.green)
            .clipShape(Capsule())
            .padding()
            .background(Color.red)
            .clipShape(Capsule())
        }
    }
}

#Preview {
    ModifierOrder_Demo()
}
