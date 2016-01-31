//
//  ViewController.swift
//  SimpleFlashCards
//
//  Created by Matt on 11/7/15.
//  Copyright © 2015 Matt S Becker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentQuestion:Question?

    // MARK: IBOutlets
    @IBOutlet var imgQuestion: UIImageView!
    @IBOutlet var btnShowNext: UIButton!
    @IBOutlet var btnShowPrevious: UIButton!
    @IBOutlet var lblAnswer: UILabel!
    @IBOutlet var btnRevealAnswer: UIButton!

    @IBOutlet var txtAnswer: UITextView!
    // MARK: IBActions
    @IBAction func btnRevealAnswerPress(sender: AnyObject) {
        displayAnswer(true)
    }
    
    @IBAction func btnShowNextPress(sender: AnyObject) {
        showNextQuestion()
    }
    
    @IBAction func btnShowPreviousPress(sender: AnyObject) {
        showPreviousQuestion()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // On successful launch, initialize the QAController
        QAController.sharedInstance
        
        // Do any additional setup after loading the view, typically from a nib.
        showNextQuestion()
        displayPrevious(false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UI Functions    
    func displayAnswer(display: Bool) {
        txtAnswer.alpha = display == true ? 1 : 0
    }
    
    func displayPrevious(display: Bool) {
        btnShowPrevious.alpha = display == true ? 1 : 0
    }
    
    func showNextQuestion() {
        var position = 0
        if (self.currentQuestion != nil) {
            position = (self.currentQuestion?.position)! + 1
        }
        // is there a question avaialble at the next index?
        if (QAController.sharedInstance.answerIsAvailableAtIndex(position)) {
            let currentQuestion = QAController.sharedInstance.retreiveQuestionFromArrayById(position)
            showQuestion(currentQuestion)
        } else {
            displayRandomizeConfirmation(true)
            
        }
    }
    
    func showPreviousQuestion() {
        var position = (self.currentQuestion?.position)! - 1
        if (position < 0) {
            position = 0
        }
        let currentQuestion = QAController.sharedInstance.retreiveQuestionFromArrayById(position)
        showQuestion(currentQuestion)
    }
    
    func showQuestion(question: Question) {
        displayAnswer(false)
        self.currentQuestion = question
        self.currentQuestion!.wasShown = true
        imgQuestion.image = self.currentQuestion!.image
        var text = self.currentQuestion!.answer.title! + ", " + self.currentQuestion!.answer.artist! + ", \n"
        text = text + self.currentQuestion!.answer.year! + " \n " + self.currentQuestion!.answer.movement!
        
        txtAnswer.text = text
        
        if (self.currentQuestion?.position > 0) {
            displayPrevious(true)
        } else {
            displayPrevious(false)
        }
    }
    
    // MARK: Motion Event overrides
    override func motionBegan(motion: UIEventSubtype,
        withEvent event: UIEvent?) {
            print("Began Shake")
            displayRandomizeConfirmation(false)
    }
    
    func displayRandomizeConfirmation(outOfQuestions: Bool) {
        let message = outOfQuestions ? "You answered all of the questions. Do you want to re-randomize and give it another go?":"You shook your device! Looking to randomize the questions?"
        let alert = UIAlertController.init(title: "Randomize!", message: message , preferredStyle: UIAlertControllerStyle.ActionSheet)
        alert.addAction(UIAlertAction(title: "Yeah!",
            style: UIAlertActionStyle.Default,
            handler:randomizeFromAlert
            ))
        alert.addAction(UIAlertAction.init(title: "Nope",
            style: UIAlertActionStyle.Cancel,
            handler: nil)
        )
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func randomizeFromAlert(alert: UIAlertAction!) {
        QAController.sharedInstance.shuffleQuestionAnswerArray()
        self.currentQuestion = nil
        self.showNextQuestion()
    }

}

