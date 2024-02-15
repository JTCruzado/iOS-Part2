//
//  CustomModifiers_Demo.swift
//  iOS2-Day3 - Part 2
//
//

import SwiftUI

// Example 1
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.purple)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

// Example 2
struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(Color.black)
        }
    }
}

// Visit "NotesOnExtensions" File for a detailed explaination on extensions in swift ui.

extension View {
    func watermarked(with text: String) -> some View {
        self.modifier(Watermark(text: text))
    }
}

struct CustomModifiers_Demo: View {
    var body: some View {
        Text("Uncomment to view inside canvas")
        /*Part 1*/
        /*
         
         Text("Custom Modifier")
         .modifier(Title())
         */
        
        /*Part 2: Watermark*/
        /*
         
         Color.blue
         .frame(width: 300, height: 200)
         .watermarked(with: "iOS Part 2")
         
         */
    }
}

#Preview {
    CustomModifiers_Demo()
}
