//
//  SimpleFlashCardsTests.swift
//  SimpleFlashCardsTests
//
//  Created by Matt Becker on 1/31/16.
//  Copyright © 2016 Matt S Becker. All rights reserved.
//

import XCTest

class SimpleFlashCardsTests: XCTestCase {
    
    var sharedQAControllerInstance:QAController?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        testPerformanceExample()
        retrieveNewQuestionFromControllerSuccess()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    func createQAControllerInstance() {
        sharedQAControllerInstance = QAController.sharedInstance
        // assert the instance is not nil; if it is, something failed to initialize properly
        XCTAssert(sharedQAControllerInstance != nil)
    }
    
    func retrieveNewQuestionFromControllerSuccess() {
        let question = sharedQAControllerInstance!.retreiveQuestionFromArrayById(1)
        // assert the question has not been shown and that the artist != nil
        XCTAssert(question.answer.artist != nil)
        XCTAssert(!question.wasShown)
    }
    
}
