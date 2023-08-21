//
//  Picture.swift
//  ff1
//
//  Created by Dave Elward on 8/21/2323 from Apple MemeCreator sample app.
//

import SwiftUI

struct Picture: Codable {
    var description: String
    var imageUrl: URL?
    
    static let defaultPicture = Picture(description: "Cute Picture",
                                    imageUrl: URL(string: "https://ankalorek.files.wordpress.com/2013/11/panda1.jpg"))
}
