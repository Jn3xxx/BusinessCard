//
//  ContentView.swift
//  KevinCard
//
//  Created by Kevin Waller on 6/21/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea(.all)
            VStack {
                Image(systemName: "person.fill")
                   // Make sure to replace this image with your picture, the name needs to be typed the exact same
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color("bubbleColor"), lineWidth: 5)
                    )
                
                Text("Name Here")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                
                Text("Job Title Here")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text: "Phone Number Here", imageName: "phone.fill")
                InfoView(text: "Email Here", imageName: "envelope.fill")
                    
                // Add more of these by typing InfoView and inputting the icon and text as needed. Check out the SFSymbols app for icons that Apple provides for free
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider  {
    static var previews: some View {
        ContentView()
    }
}
