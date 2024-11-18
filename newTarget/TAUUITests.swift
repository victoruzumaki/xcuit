//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by Victor Ike okoro on 16/11/2024.
//  Copyright © 2024 Shashikant Jagtap. All rights reserved.
//

import XCTest

class TAUUITests: XCTestCase {
    var app: XCUIApplication!
    
    override func setUp() {
           super.setUp()
           app = XCUIApplication()
           app.launch()
       }


    
    func testExample() throws {
        let username = TestData.Authentication.Login.username
        let homePage = HomeScreen(app: app);
        homePage.enterCountry(username);
        homePage.clickEnroll();
        homePage.verifyMessage();
    }


}
