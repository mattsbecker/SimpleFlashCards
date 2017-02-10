//
//  MainQuestionViewController.swift
//  SimpleFlashCards
//
//  Created by Matt Becker on 5/25/16.
//  Copyright © 2016 Matt S Becker. All rights reserved.
//

import UIKit

class MainQuestionViewController: UIViewController, UIToolbarDelegate {
    var currentQuestion:Question?
    
    // MARK: IBOutlets
    @IBOutlet var imgQuestion: UIImageView!
    @IBOutlet var lblAnswer: UITextView!
    
    @IBOutlet weak var actionToolbar: UIToolbar!
    @IBOutlet weak var revealToolbarItem: UIBarButtonItem!
    @IBOutlet weak var previousToolbarItem: UIBarButtonItem!
    @IBOutlet weak var nextToolbarItem: UIBarButtonItem!
    
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
        
        let revealButton = UIBarButtonItem(title: "Reveal", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(displayAnswer))
        self.actionToolbar.items?.append(revealButton)
        
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
        //previousToolbarItem.enabled = display == true ? true : false
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
