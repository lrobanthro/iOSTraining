//
//  ViewTest.swift
//  iOS Training
//
//  Created by Nick DiStefano on 1/19/16.
//  Copyright © 2016 URBN. All rights reserved.
//

import XCTest

class ViewTest: XCTestCase {
    
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
        let l = app.staticTexts.elementMatchingType(.Any, identifier: "yeo").label
        XCTAssert(l == "Click any of the buttons below for your fortune", "")
        
        let btn = XCUIApplication().buttons.elementMatchingType(.Button, identifier: "btn")
        let btnz = XCUIApplication().buttons.elementMatchingType(.Button, identifier: "btnz")
        XCTAssertFalse(btn.exists, "are we not here?")

        XCTAssert(btn.exists, "are we here?")
        XCUIApplication().buttons.elementMatchingType(.Button, identifier: "btn").tap()
        
        let l2 = app.staticTexts.elementMatchingType(.Any, identifier: "yeo").label
        XCTAssert(l2 == "Fortune #1: Take advantage of an upcoming opportunity - make this really long so that it\'s more than 1 or 2 lines", "")
    }

}
