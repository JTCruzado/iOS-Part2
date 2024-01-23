//
//  ContentView.swift
//  iOS2-Day1


// Please review readme file before proceeding

import SwiftUI

struct ContentView: View {
    // Uncomment for Example 7
    // @State private var fontSize = 16.0
    
    // Uncomment for Example 8
    /*
     let students = ["Harry", "Hermione", "Ron"]
     @State private var selectedStudent = "Harry"
     */
    
    var body: some View {
        // Uncomment Each Example and try out the code yourself 🤓.
        Text(" 🚨Uncomment Each Example and try out the code yourself 🤓.")
            .padding()
        // 🧠 Example 1: Basic Forms
        // Applications often need user input, such as names, locations, or profile pictures.
        // SwiftUI provides a dedicated view type called Form to handle this functionality.
        /*
         Form {
         Text("")
         }
         */
        // ------------------------------------------------
        // 🧠 Example 2: Form Child Limit
        // A Form can only have 10 direct children. To add more, you need to use Group or Section.
        /*
         Form {
         Text("")
         Text("")
         Text("")
         Text("")
         Text("")
         Text("")
         Text("")
         Text("")
         Text("")
         Text("")
         }
         */
        // ------------------------------------------------
        
        // 🧠 Example 3: Groups
        // Groups live inside the Form View; they allow us to maintain the visual grouping of a form and exceed the 10 children limit.
        /*
         Form{
         Group{
         Text("Favorite Film: 1")
         Text("Favorite Film: 2")
         Text("Favorite Film: 3")
         Text("Favorite Film: 4")
         Text("Favorite Film: 5")
         }
         Group{
         Text("Favorite Film: 6")
         Text("Favorite Film: 7")
         Text("Favorite Film: 8")
         Text("Favorite Film: 9")
         Text("Favorite Film: 10")
         }
         }
         */
        // ------------------------------------------------
        // 🧠 Example 4: Sections
        // Sections allow us to create a visual separation in our view and exceed the 10 children limit.
        // This can be useful when you want to have a section for favorite shows and one for favorite movies or a tier list.
        /*
         Form {
         Section(header: Text("S Tier: ")) {
         Text("")
         }
         Section(header: Text("A Tier: ")) {
         Text("")
         }
         Section(header: Text("B Tier: ")) {
         Text("")
         }
         Section(header: Text("C Tier: ")) {
         Text("")
         }
         Section(header: Text("D Tier: ")) {
         Text("")
         }
         Section(header: Text("F Tier: ")) {
         Text("")
         }
         }
         */
        
        // ------------------------------------------------
        // Example 5: Navigation Bar
        // NavigationView is used to create a navigation interface.
        // The navigationBarTitle modifier sets the title of the navigation bar.
        /*
         NavigationView {
         Form {
         Section(header: Text("S Tier: ")) {
         Text("")
         }
         Section(header: Text("A Tier: ")) {
         Text("")
         }
         Section(header: Text("B Tier: ")) {
         Text("")
         }
         Section(header: Text("C Tier: ")) {
         Text("")
         }
         Section(header: Text("D Tier: ")) {
         Text("")
         }
         Section(header: Text("F Tier: ")) {
         Text("")
         }
         }
         .navigationBarTitle("Tier List Maker", displayMode: .inline) // Add your navigation bar title e.g Street Fighter 6 Tier List
         }
         */
        // ------------------------------------------------
        /*
         Example 6: @State  is a special property wrapper in iOS that allows developers to store and manage the state of a view. In simpler terms, it’s a way to keep track of the current state of an app’s user interface.
         
         struct ContentView: View {
         @State private var count = 0
         
         var body: some View {
         VStack {
         Text("You've tapped the button \(count) times!")
         .padding()
         
         Button("Tap me!") {
         count += 1
         }
         }
         }
         }
         */
        
        // ------------------------------------------------
        /*
         //Example 7:
         //Binding State Uncomment line 11
         VStack {
         Text("🧠!")
         .font(.system(size: fontSize))
         .padding()
         
         Slider(value: $fontSize, in: 12...64, step: 1)
         .padding()
         }
         */
        
        // ------------------------------------------------
        /*
         //Example 8a: Views, ForEach
        
             Form {
                 ForEach(0..<100) {
                     Text("Row \($0)")
                 }
             }
         
         */
        
        /*
         //Example 8b: Views, Picker View, ForEach
         NavigationView {
             Form {
                 Picker("Select your student", selection: $selectedStudent) {
                     ForEach(students, id: \.self) {
                         Text($0)
                     }
                 }
             }
         }
         */
        
    }
}


#Preview {
    ContentView()
}
