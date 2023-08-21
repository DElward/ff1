//
//  LoadableImage.swift
//  ff1
//
//  Created by Dave Elward on 8/21/23 from Apple MemeCreator sample app.
//

import SwiftUI

struct LoadableImage: View {
    var imageMetadata: Picture
    
    var body: some View {
        AsyncImage(url: imageMetadata.imageUrl) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                    .shadow(radius: 5)
                    .accessibility(hidden: false)
                    .accessibilityLabel(Text(imageMetadata.description))
            }  else if phase.error != nil  {
                VStack {
                    Image("FFPlaceholder")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 300)
                    Text("Could not connect to the internet.")
                        .font(.title2)
                    Text("Please try again.")
                        .font(.title3)
                }
                
            } else {
                ProgressView()
            }
        }
    }
}

struct Picture_Previews: PreviewProvider {
    static var previews: some View {
        LoadableImage(imageMetadata: Picture.defaultPicture)
    }
}
