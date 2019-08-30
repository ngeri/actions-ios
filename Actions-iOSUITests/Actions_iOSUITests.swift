//
//  Actions_iOSUITests.swift
//  Actions-iOSUITests
//
//  Created by Németh Gergely on 2019. 08. 30..
//  Copyright © 2019. Németh Gergely. All rights reserved.
//

import XCTest

class Actions_iOSUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    func testExample() {
        let app = XCUIApplication()
        app.buttons["Github Actions"].tap()
        XCTAssert(app.staticTexts["detail_label"].isHittable)
    }

}
