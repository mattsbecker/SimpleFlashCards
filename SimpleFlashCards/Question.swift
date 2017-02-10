//
//  Question.swift
//  SimpleFlashCards
//
//  Created by Matt on 11/7/15.
//  Copyright © 2015 Matt S Becker. All rights reserved.
//

import Foundation
import UIKit

//MARK Equatable protocol

func ==(lhs: Question, rhs: Question) -> Bool {
    return lhs.hashValue == rhs.hashValue
}

class Question:Hashable,Equatable {
    var questionText:String?
    var image:UIImage
    var answer:Answer
    var wasShown:Bool = false
    var position:Int = 0

    // MARK hashable protocol
    var hashValue:Int {
        get {
            return self.image.hashValue
        }
    }
    
    init(questionText: String, image: UIImage, answer: Answer) {
        self.questionText = questionText
        self.image = image
        self.answer = answer
    }
}
