//
//  Answer.swift
//  SimpleFlashCards
//
//  Created by Matt on 11/7/15.
//  Copyright © 2015 Matt S Becker. All rights reserved.
//

import Foundation

class Answer {
    var title:String?
    var artist:String?
    var year:String?
    var media:String?
    var metadata:String?
    var movement:String?
    
    init(title: String, artist: String, year: String, media: String, metadata: String, movement: String) {
        self.title = title
        self.artist = artist
        self.year = year
        self.media = media
        self.metadata = metadata
        self.movement = movement
    }
}