//
//  QAController.swift
//  SimpleFlashCards
//
//  Created by Matt on 11/7/15.
//  Copyright © 2015 Matt S Becker. All rights reserved.
//

import Foundation
import UIKit

class QAController {
    
    var questionAnswerArray: Array<Question>
    var currentQuestion:Question?

    static let sharedInstance = QAController()

    init() {
        // populate the array of questions and answers
        self.questionAnswerArray = Array<Question>()
        self.questionAnswerArray = self.populateQuestionAnswerArray()
    }

    func populateQuestionAnswerArray() -> Array<Question> {
        // go down the list!

        // Barbara Kruger, Untitled (We won’t play nature to your culture), 1983, photostat, Appropriation
        
        var answer = Answer.init(title: "Untitled (We won’t play nature to your culture)", artist: "Barbara Kruger", year: "1983", media: "photostat", metadata: " none ", movement: "Appropriation" )
        
        var image = UIImage.init(named: "Untitled (We won’t play nature to your culture)")
        
        var question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Cindy Sherman, Film Still #7, 1978, b/w photograph, Appropriation
        
        answer = Answer.init(title: "Film Still #7", artist: "Cindy Sherman", year: "1978", media: "b/w photograph", metadata: " none ", movement: "Appropriation" )
        
        image = UIImage.init(named: "Film Still #7")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Sherrie Levine, After Edward Weston, 1981, gelatin silver print, Appropriation
        
        answer = Answer.init(title: "After Edward Weston", artist: "Sherrie Levine", year: "1981", media: "gelatin silver print", metadata: " none ", movement: "Appropriation" )
        
        image = UIImage.init(named: "After Edward Weston")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Robert Longo, American Soldier, 1977, enamel on cast aluminum, Appropriation
        
        answer = Answer.init(title: "American Soldier", artist: "Robert Longo", year: "1977", media: "enamel on cast aluminum", metadata: " none ", movement: "Appropriation" )
        
        image = UIImage.init(named: "American Soldier")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Jack Goldstein, The Pull,  1976,  Chromogenic color print,  Appropriation
        
        answer = Answer.init(title: "The Pull", artist: "Jack Goldstein", year: "1976", media: " Chromogenic color print", metadata: " none ", movement: " Appropriation" )
        
        image = UIImage.init(named: "The Pull")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Yasumasa Morimura, Portrait (Futago), 1988, chromogenic print with acrylic paint and gel medium, Appropriation
        
        answer = Answer.init(title: "Portrait (Futago)", artist: "Yasumasa Morimura", year: "1988", media: "chromogenic print with acrylic paint and gel medium", metadata: " none ", movement: "Appropriation" )
        
        image = UIImage.init(named: "Portrait (Futago)")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Omer Fast, CNN Concatenated, video - 7 min, 2002, Appropriation
        
        answer = Answer.init(title: "CNN Concatenated", artist: "Omer Fast", year: "2002", media: "video - 7 min", metadata: " none ", movement: "Appropriation" )
        
        image = UIImage.init(named: "CNN Concatenated")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        self.questionAnswerArray.append(question) 

        // Wang Guangyi, Coca-Cola, 1993, oil on canvas, (from the “Great Criticism” series, 1990-2003), East Asia, Africa, Middle East - East Asia
        
        answer = Answer.init(title: "Coca-Cola", artist: "Wang Guangyi", year: "1993", media: "oil on canvas, (from the “Great Criticism” series, 1990-2003)", metadata: " none ", movement: "East Asia, Africa, Middle East - East Asia" )
        
        image = UIImage.init(named: "Coca-Cola")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Ai Weiwei, Straight, 150 tons of straighten rebars, dimensions vary, 2008-2012, East Asia, Africa, Middle East - East Asia
        
        answer = Answer.init(title: "Straight", artist: "Ai Weiwei", year: "2008-2012", media: "150 tons of straighten rebars, dimensions vary", metadata: " none ", movement: "East Asia, Africa, Middle East - East Asia" )
        
        image = UIImage.init(named: "Straight")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Zhang Huan, My America, 1999, performance, Seattle Art Museum, East Asia, Africa, Middle East - East Asia
        
        answer = Answer.init(title: "My America", artist: "Zhang Huan", year: "1999", media: "performance, Seattle Art Museum", metadata: " none ", movement: "East Asia, Africa, Middle East - East Asia" )
        
        image = UIImage.init(named: "My America")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Tehching Hsieh, One-Year Performance, , 1981-82, East Asia, Africa, Middle East - East Asia
        
        answer = Answer.init(title: "One-Year Performance", artist: "Tehching Hsieh", year: "1981-82", media: "", metadata: " none ", movement: "East Asia, Africa, Middle East - East Asia" )
        
        image = UIImage.init(named: "One-Year Performance")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Walid Raad, Hostage: The Bachar Tapes, 2000, video, East Asia, Africa, Middle East - Middle East
        
        answer = Answer.init(title: "Hostage: The Bachar Tapes", artist: "Walid Raad", year: "2000", media: "video", metadata: " none ", movement: "East Asia, Africa, Middle East - Middle East" )
        
        image = UIImage.init(named: "Hostage-The Bachar Tapes")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Yinka Shonibare, Gallantry and Criminal Conversation, 2002, mixed media installation, East Asia, Africa, Middle East - Africa
        
        answer = Answer.init(title: "Gallantry and Criminal Conversation", artist: "Yinka Shonibare", year: "2002", media: "mixed media installation", metadata: " none ", movement: "East Asia, Africa, Middle East - Africa" )
        
        image = UIImage.init(named: "Gallantry and Criminal Conversation")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // El Anatsui, Flag for a New World Power, 2004, found aluminum and copper wire, East Asia, Africa, Middle East - Africa
        
        answer = Answer.init(title: "Flag for a New World Power", artist: "El Anatsui", year: "2004", media: "found aluminum and copper wire", metadata: " none ", movement: "East Asia, Africa, Middle East - Africa" )
        
        image = UIImage.init(named: "Flag for a New World Power")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Alfredo Jaar, One Million Finnish Passports, 1995, installation, Other Territories, Part II(Eastern Europe, Latin America)
        
        answer = Answer.init(title: "One Million Finnish Passports", artist: "Alfredo Jaar", year: "1995", media: "installation", metadata: " none ", movement: "Other Territories, Part II(Eastern Europe, Latin America)" )
        
        image = UIImage.init(named: "One Million Finnish Passports")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Kcho, Speaking of the Obvious Was Never a Pleasure for Us, 1997, installation, Other Territories, Part II(Eastern Europe, Latin America)
        
        answer = Answer.init(title: "Speaking of the Obvious Was Never a Pleasure for Us", artist: "Kcho", year: "1997", media: "installation", metadata: " none ", movement: "Other Territories, Part II(Eastern Europe, Latin America)" )
        
        image = UIImage.init(named: "Speaking of the Obvious Was Never a Pleasure for Us")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Boris Mikhailov, Untitled, from the series Case History, 1997-98, chromogenic color print, Other Territories, Part II(Eastern Europe, Latin America)
        
        answer = Answer.init(title: "Untitled, from the series Case History", artist: "Boris Mikhailov", year: "1997-98", media: "chromogenic color print", metadata: " none ", movement: "Other Territories, Part II(Eastern Europe, Latin America)" )
        
        image = UIImage.init(named: "Untitled, from the series Case History")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Oleg Kulik, Dog House, performance, 1995-present, Other Territories, Part II(Eastern Europe, Latin America)
        
        answer = Answer.init(title: "Dog House", artist: "Oleg Kulik", year: "1995-present", media: "performance", metadata: " none ", movement: "Other Territories, Part II(Eastern Europe, Latin America)" )
        
        image = UIImage.init(named: "Dog House")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Jeff Koons, Balloon Dog (Blue), 1994-2008, high chromium stainless steel with transparent color coating, Art, Globalization, and the Market
        
        answer = Answer.init(title: "Balloon Dog (Blue)", artist: "Jeff Koons", year: "1994-2008", media: "high chromium stainless steel with transparent color coating", metadata: " none ", movement: "Art, Globalization, and the Market" )
        
        image = UIImage.init(named: "Balloon Dog (Blue)")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Damien Hirst, The Physical Impossibility of Death in the Mind of Someone Living, 1991, glass, steel, silicone, shark and formaldehyde solution, Art, Globalization, and the Market
        
        answer = Answer.init(title: "The Physical Impossibility of Death in the Mind of Someone Living", artist: "Damien Hirst", year: "1991", media: "glass, steel, silicone, shark and formaldehyde solution", metadata: " none ", movement: "Art, Globalization, and the Market" )
        
        image = UIImage.init(named: "The Physical Impossibility of Death in the Mind of Someone Living")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Damien Hirst, For the Love of God, 2007, platinum, diamonds and human teeth, Art, Globalization, and the Market
        
        answer = Answer.init(title: "For the Love of God", artist: "Damien Hirst", year: "2007", media: "platinum, diamonds and human teeth", metadata: " none ", movement: "Art, Globalization, and the Market" )
        
        image = UIImage.init(named: "For the Love of God")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Tracey Emin, My Bed, 1998, mattress, linens, pillows, objects, Art, Globalization, and the Market
        
        answer = Answer.init(title: "My Bed", artist: "Tracey Emin", year: "1998", media: "mattress, linens, pillows, objects", metadata: " none ", movement: "Art, Globalization, and the Market" )
        
        image = UIImage.init(named: "My Bed")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Takashi Murakami, Second Mission Project Ko², 1999-2000, oil paint, acrylic, synthetic resins, fiberglass and iron, Art, Globalization, and the Market
        
        answer = Answer.init(title: "Second Mission Project Ko²", artist: "Takashi Murakami", year: "1999-2000", media: "oil paint, acrylic, synthetic resins, fiberglass and iron", metadata: " none ", movement: "Art, Globalization, and the Market" )
        
        image = UIImage.init(named: "Second Mission Project Ko²")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Olafur Eliasson, The Weather Project, Turbine Hall, TateModern, London, 2003, installation, Art, Globalization, and the Market
        
        answer = Answer.init(title: "The Weather Project, Turbine Hall, TateModern, London", artist: "Olafur Eliasson", year: "2003", media: "installation", metadata: " none ", movement: "Art, Globalization, and the Market" )
        
        image = UIImage.init(named: "The Weather Project, Turbine Hall, TateModern, London")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Anish Kapoor, Marsyas, Tate Modern, London, 2003, steel and PVC membrane
        
        answer = Answer.init(title: "Marsyas, Tate Modern, London", artist: "Anish Kapoor", year: "2003", media: "steel and PVC membrane", metadata: " none ", movement: "Art, Globalization, and the Market" )
        
        image = UIImage.init(named: "Marsyas")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Rirkrit Tiravanija, Untitled (Free), 1992, , Participatory Art
        
        answer = Answer.init(title: "Untitled (Free)", artist: "Rirkrit Tiravanija", year: "1992", media: "", metadata: " none ", movement: "Participatory Art" )
        
        image = UIImage.init(named: "Untitled (Free)")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Liam Gillick, As You Approach the Edge of the Town the Lights Are No Softer Than They Were in the Center, 2005, , Participatory Art
        
        answer = Answer.init(title: "As You Approach the Edge of the Town the Lights Are No Softer Than They Were in the Center", artist: "Liam Gillick", year: "2005", media: "", metadata: " none ", movement: "Participatory Art" )
        
        image = UIImage.init(named: "As You Approach the Edge of the Town the Lights Are No Softer Than They Were in the Center")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Jorge Pardo, Pier, 1997, , Participatory Art
        
        answer = Answer.init(title: "Pier", artist: "Jorge Pardo", year: "1997", media: "", metadata: " none ", movement: "Participatory Art" )
        
        image = UIImage.init(named: "Pier")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question)
        // Pierre Huyghe & Philippe Parreno, AnnLee: No Ghost Just Shell, 1999-2002, , Participatory Art
        
        answer = Answer.init(title: "AnnLee: No Ghost Just Shell", artist: "Pierre Huyghe & Philippe Parreno", year: "1999-2002", media: "", metadata: " none ", movement: "Participatory Art" )
        
        image = UIImage.init(named: "AnnLee-No Ghost Just Shell")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question) 
        // Santiago Sierra, 160 cm Line Tattooed on 4 People, 2000, , Participatory Art
        
        answer = Answer.init(title: "160 cm Line Tattooed on 4 People", artist: "Santiago Sierra", year: "2000", media: "", metadata: " none ", movement: "Participatory Art" )
        
        image = UIImage.init(named: "160 cm Line Tattooed on 4 People")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question) 
        // Thomas Hirshhorn, Bataille Monument, Documenta 11, Kassel, Germany, June-September 2002, , Participatory Art
        
        answer = Answer.init(title: "Bataille Monument, Documenta 11, Kassel, Germany", artist: "Thomas Hirshhorn", year: "June-September 2002", media: "", metadata: " none ", movement: "Participatory Art" )
        
        image = UIImage.init(named: "Bataille Monument, Documenta 11, Kassel, Germany")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question) 
        // Jeremy Deller, The Battle of Orgreave, 2001, video still, Participatory Art
        
        answer = Answer.init(title: "The Battle of Orgreave", artist: "Jeremy Deller", year: "2001", media: "video still", metadata: " none ", movement: "Participatory Art" )
        
        image = UIImage.init(named: "The Battle of Orgreave")
        
        question = Question.init(questionText: "", image: image!, answer: answer)
        
        
        self.questionAnswerArray.append(question) 
        
        // when complete, return the questionAnswerArray
        
        // shuffle the array using the Fisher-Yates (new) algorithm
        shuffleQuestionAnswerArray()
        
        let questionAnswerArrayCount = questionAnswerArray.count - 1
        for i in 0...questionAnswerArrayCount {
            questionAnswerArray[i].position = i
        }
        
        return self.questionAnswerArray
    }
    
    func retreiveQuestionFromArray()->Question {
        for i in 0...questionAnswerArray.count {
            let question = questionAnswerArray[i]
            if (question.wasShown) {
                continue
            }
            if (i == questionAnswerArray.count && question == self.currentQuestion) {
                print("Out of questions!")
            }
            self.currentQuestion = question

        }
        return self.currentQuestion!
    }

    func answerIsAvailableAtIndex(_ position: Int)->Bool {
        let result = (position <= questionAnswerArray.count - 1) ? true:false
        return result
    }
    
    func retreiveQuestionFromArrayById(_ position: Int)->Question {
        return questionAnswerArray[position];
    }
    
    func shuffleQuestionAnswerArray() {
        /* We use a Fisher-Yates algorithm to shuffle the array. The algorithm explanation can be found here: https://en.wikipedia.org/wiki/Fisher–Yates_shuffle#Modern_method
        
        To shuffle an array (a) of (n) elements
        
        for i = 0 to n-1
            j ← random integer such that i ≤ j < n
                exchange a[j] and a[i]

        */

        let n = questionAnswerArray.count - 1
        for i in 0...n {
            
            // retreive a random number that is greater than i, but less than n
            let rand = Int(arc4random_uniform(UInt32(questionAnswerArray.count) - 1))
            
            // get the positions of the current element and the randomly selected element
            let questionRand = questionAnswerArray[rand]
            print("random array selection is: , position is: ", rand, i)
            let question = questionAnswerArray[i]
            
            // swap the positions of the elements
            questionRand.position = i
            question.position = rand
            questionAnswerArray[i] = questionRand
            questionAnswerArray[rand] = question
        }
    }
    
}
