//
//  SomePublicClass.swift
//  SomeFramework
//
//  Created by Brandon Suarez on 7/12/23.
//

import Foundation

public class SomePublicClass {

    // You need to declare the initializer explicitly public if you want to instantiate this class outside of the framework, else the default access control is internal.
    public init() { }
    
    
    // The access level will be restricted to public because of the
    // type's original declaration
    open var someOpenProperty: String {
        "someOpenProperty"
    }
    
    // the property can only be read from outside of its declaring module, from within its declaring class the property can be altered as
    // pleased
    open private(set) var somePrivateSetProperty: Int = 10
    
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
