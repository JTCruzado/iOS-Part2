//
//  ContentView.swift
//  iOS2-Day2
//
//  Created by Jeremy T Cruzado on 2/1/24.
//

import SwiftUI

struct ContentView: View {
    // Uncomment for example 7
    
     @State private var showingAlert = false
     
    var body: some View {
        
        Text(" 🚨Uncomment Each Example and try out the code yourself 🤓.")
            .padding()
        
        /* 🤓 Example 1 🤓
         Creating a Text View
         */
        
        /*
         Text("Hello, world!")
         .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
         Text("This is another text view")
         .font(.largeTitle)
         */
        
        /* 🤓 Example 2 🤓
         Creating a VStack, Arranging two text views in a VStack
         */
        /*
        VStack(spacing:40){
         Text("I am Text View inside a VStack View Container")
         Text("Hello I'm your Text View neighbor below 👋🏼")
         Text("It's a little tight here ! Try modifying this view container, add a spacing parameter after the word 'VStack' like this (spacing:20)")
         }.padding(10)
         */
        
        /* 🤓 Example 3 🤓
         Creating a HStack, Arranging two text views in a HStack
         */
        /*
        HStack(alignment: .center, spacing: 20) {
            
            Text("Left")
            Text("Center")
            Text("Right")
        }
         */
        
        /* 🤓 Example 4 🤓
         Creating a ZStack, the views overlap by depth, allowing alignment as well. ZStack draws its contents from top to bottom, back to front, so the last view will be placed on top.
         */
        /*
        ZStack {
            Image("backgroundimage")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            HStack {
                Text("iOS Day 2")
                    .font(.title)
                    .foregroundColor(.purple)
                    .padding()
                    .background()
            }
        }
    */
        /* 🤓 Example 5a 🤓
         Colors and frames
         */
        /*
        ZStack {
            VStack(spacing: 0) {
                Color.green
                Color.purple
            }
            Text("Your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }.ignoresSafeArea()
         */
        /*
        VStack {
            Text("Hello, Gradient!")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [.cyan, .black]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .cornerRadius(10)
        }
        .padding()
        */
        /* 🤓 Example 5b 🤓
         Colors and frames
         */
        /*
        VStack {
            Text("Hello, Gradient!")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(
                    RadialGradient(gradient: Gradient(colors: [.yellow, .red]), center: .center, startRadius: 50, endRadius: 200)
                )
                .cornerRadius(10)
        }
        .padding()
         */
        /* 🤓 Example 5c 🤓
         Colors and frames
         */
        /*
        VStack {
            Text("Hello, Gradient!")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .background(
                    AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
                )
                .cornerRadius(10)
        }
        .padding()
        */
        
        /*🤓 Example 6 🤓
         Buttons
         */
        /*
        Button("Delete selection") {
            print("You are a bot...")
        }
         */
        /*🤓 Example 6a 🤓
         Buttons
         */
        /*
        Button {
            print("Button was tapped")
        } label: {
            Image(systemName: "pencil")
        }
         */
        
        /*🤓 Example 6b 🤓
         Buttons
         */
        /*
        Button {
            print("Edit button was tapped")
        } label: {
            Label("Edit", systemImage: "pencil")
        }
         */
        
        /*🤓 Example 7 🤓
         Alert
         */
      
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("Please read this.")
        }
       
    }
}

#Preview {
    ContentView()
}
