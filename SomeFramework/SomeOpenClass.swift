//
//  SomeOpenClass.swift
//  SomeFramework
//
//  Created by Brandon Suarez on 7/12/23.
//

import Foundation

// Highest access level, it allows subclassing of this type, as well as override and instantiation.

open class SomeOpenClass: SomeOpenProtocol {
    public func printMessage() {
        print("This is a message")
    }
    
    public func printValue() {
        print("This is the value: 5")
    }
    
    
    // the initializer has to be public, else if you set it to open you will get an error.
    // you need to declare the initializer explicitly public if you want to instantiate this class outside of the framework, else the default access control is internal.
    public init() { }
    
    open var someOpenProperty: String {
        "someOpenProperty"
    }
    
    public var somePublicProperty: String {
        "somePublicMethod"
    }
    
    internal func someInternalMethod() {
        print("someInternalMethod")
    }
    
    fileprivate func someFilePrivateMethod() {
        print("someFilePrivateMethod")
    }
    
    private func somePrivateMethod() {
        print("somePrivateMethod")
    }
    
}
