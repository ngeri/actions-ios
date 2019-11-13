//
//  ActionsTests.swift
//  ActionsTests
//
//  Created by Németh Gergely on 2019. 11. 13..
//  Copyright © 2019. Németh Gergely. All rights reserved.
//

import XCTest
@testable import Actions

class ActionsTests: XCTestCase {

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

    func testSomeFunctionWhichIsNotTestedSoItWillRuinTheCodeCoverage() {
        let result = sut.someFunctionWhichIsNotTestedSoItWillRuinTheCodeCoverage()

        XCTAssertEqual(result, "🥺")
    }
}

