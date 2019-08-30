//
//  Actions_iOSTests.swift
//  Actions-iOSTests
//
//  Created by Németh Gergely on 2019. 08. 30..
//  Copyright © 2019. Németh Gergely. All rights reserved.
//

import XCTest
@testable import Actions_iOS

class Actions_iOSTests: XCTestCase {

    var sut: GithubActionsViewController!

    override func setUp() {
        sut = GithubActionsViewController()
    }

    override func tearDown() {
        sut = nil
    }

    func testResultIsHello() {
        let input = 1

        let result = sut.someFunctionToTest(input)

        XCTAssertEqual(result, "Hello", "'result' should be 'Hello'")
    }

    func testResultIsNil() {
        let input = 5

        let result = sut.someFunctionToTest(input)

        XCTAssertNil(result, "'result' should be nil")
    }
}
