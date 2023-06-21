//
//  InfoView.swift
//  KevinCard
//
//  Created by Kevin Waller on 6/21/23.
//

// This is the struct for the info bubble. The text and bubbles are set up to alternate between white and black for light and dark mode. Modify the color under assets to customize the looks and check the previews to make sure it is what you want

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(Color("bubbleColor"))
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color("background"))
                    // This will change the color of your image. You can use a system color by typing . and looking through autofill or set a custom color like the textColor field underneat
                Text(text)
                    .foregroundColor(Color("textColor"))
            })
    }
}

struct InfoView_Previews: PreviewProvider  {
    static var previews: some View {
        InfoView(text: "Phone Number", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}


