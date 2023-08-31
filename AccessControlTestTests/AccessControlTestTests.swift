//
//  AccessControlTestTests.swift
//  AccessControlTestTests
//
//  Created by Brandon Suarez on 7/12/23.
//

import XCTest
// to make use of all the elements until internal access level use the @testable keyword
@testable import AccessControlTest

final class AccessControlTestTests: XCTestCase {
    
    // you will get access only to internal access level elements, no private nor file-private.
    func testExample() {
        let viewController = ViewController()
        let messageA = viewController.somePublicClass.somePublicProperty
        XCTAssertEqual(messageA, "somePublicMethod")
        
        let messageB = viewController.someOpenClass.someOpenProperty
        XCTAssertEqual(messageB, "someOpenProperty")
        
    }

}
