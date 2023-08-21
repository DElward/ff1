//
//  ContentView.swift
//  ff1
//
//  Created by Dave Elward on 8/21/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("FFLogo")
                .resizable()
                .frame(height: 100.0) // as per your requirement
                //.border(.black)
            LoadableImage(imageMetadata: Picture.defaultPicture)
            Text("Current Issue")
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
