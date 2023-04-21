//
//  RemoteImageView.swift
//
//  Created by Russell Gordon on 2022-02-26.
//
//  LICENSE:
//  This work is licensed under CC BY-NC-SA 4.0
//  https://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1

import SwiftUI

struct RemoteImageView: View {
    
    // MARK: Stored properties
    
    // What image to show
    let urlOfImageToShow: String
    let desiredWidth: CGFloat
    
    // MARK: Computed properties
    var body: some View {
        
        // Try to create a URL from the string provided
        if let url = URL(string: urlOfImageToShow) {
            
            // Retrieves and displays a remote image, showing a placeholder until the image has loaded
            AsyncImage(url: url,
                       content: { downloadedImage in
                downloadedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: desiredWidth)
            },
                       placeholder: {
                ProgressView()
            })
            
        } else {
            // If the string could not be made into a URL, show a question mark
            Image(systemName: "questionmark.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 25)
                .foregroundColor(.blue)
        }

    }
    
}

struct RemoteImageView_Previews: PreviewProvider {
        
    static var previews: some View {
        
        // Good URL example
        RemoteImageView(urlOfImageToShow: "https://www.themealdb.com//images//media//meals//sytuqu1511553755.jpg", desiredWidth: 100)

        // Bad URL example
        RemoteImageView(urlOfImageToShow: "", desiredWidth: 100)

    }
    
}
