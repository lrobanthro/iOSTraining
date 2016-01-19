//
//  ViewTests.swift
//  iOS Training
//
//  Created by Lynne Robinson on 1/19/16.
//  Copyright © 2016 URBN. All rights reserved.
//

import XCTest

class ViewTests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let app = XCUIApplication()
        
        let label = app.staticTexts.elementMatchingType(.Any, identifier: "Fortune Label").label
        XCTAssert(label == "Click any of the buttons below for your fortune")
        
        let button1 = app.buttons.elementMatchingType(.Button, identifier: "Button1")
        button1.tap()
        
        let label2 = app.staticTexts.elementMatchingType(.Any, identifier: "Fortune Label").label
        XCTAssert(label2 == "Fortune #1: Take advantage of an upcoming opportunity - make this really long so that it's more than 1 or 2 lines")
    
    }
    
}
