//
//  SomeOpenProtocol.swift
//  SomeFramework
//
//  Created by Brandon Suarez on 7/13/23.
//

import Foundation

// apparently only classes can have an access level of open, either way the access level of the protocol is the one that
// its requirements will be associated with when conforming
public protocol SomeOpenProtocol {
    func printMessage()
    func printValue()
}
