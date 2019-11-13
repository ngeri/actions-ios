//
//  ActionsUITests.swift
//  ActionsUITests
//
//  Created by Németh Gergely on 2019. 11. 13..
//  Copyright © 2019. Németh Gergely. All rights reserved.
//

import XCTest

class ActionsUITests: XCTestCase {

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
