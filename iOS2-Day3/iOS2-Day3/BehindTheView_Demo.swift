//
//  BehindTheView_Demo.swift
//  iOS2-Day3
//
//  Example 2
//

import SwiftUI

struct BehindTheView_Demo: View {
    var body: some View {
        Text("Play, Tekken 8!")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.green)
    }
}

#Preview {
    BehindTheView_Demo()
}
