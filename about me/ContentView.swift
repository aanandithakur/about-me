//
//  ContentView.swift
//  about me
//
//  Created by Aanandi Thakur on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    @State private var showAdditionalText = false // Set to false so that it doesn't show initially
    
    var body: some View {
            ZStack {
                Image("doc")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(1)
                
                VStack {
                    
                    Text("Aanandi Thakur")
                        .frame(width: 300, height: 700, alignment:.top)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                
                Image("sutur")
                    .resizable()
                    .aspectRatio(contentMode: .fit) // Use .fit or .fill based on how you want the image to be displayed
                    .clipShape(Circle())
                    .scaleEffect(0.4)
                
               
                Button("Learn More!") {
                        showAdditionalText.toggle() // Toggling the state to show/hide the text
                    }
                .frame(width: 300, height: 750, alignment:.bottom)
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .padding()
                
                    
                    if showAdditionalText {
                        Text("Hey, I'm Aanandi from NC! I'm really passionate about medicine and writing. When I grow up, I hope to become a plastic surgeon and own my own clinic!")
                            .frame(width: 300, height: 600, alignment:.bottom)
                            .font(.headline)
                            .padding()
                            .foregroundColor(.white)
                    }
                }
            }
        }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
