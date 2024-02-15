//
//  Struct_Demo.swift
//  iOS2-Day3
//
// Example 1
//

import SwiftUI

struct UserProfileView: View {
    let username: String
    let bio: String
    
    var body: some View {
        VStack {
            Text("Username: \(username)")
                .font(.headline)
            Text("Bio: \(bio)")
                .font(.body)
        }
        .padding()
    }
}

#Preview {
    VStack {
        UserProfileView(username: "Jeremy", bio: "Swift developer")
           }
}
