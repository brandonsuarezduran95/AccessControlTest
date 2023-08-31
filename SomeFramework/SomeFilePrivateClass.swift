//
//  SomeFilePrivateClass.swift
//  AccessControlTest
//
//  Created by Brandon Suarez on 7/12/23.
//

import Foundation

fileprivate class SomeFilePrivateClass {
    
    var someImplicitFilePrivateProperty: String {
        "someImplicitFilePrivateProperty"
    }
    
    func printMessage() {
        print("printed message")
    }
}


fileprivate class SomeOtherFilePrivateClass {
    
    let instance = SomeFilePrivateClass()
    
    func perform() {
        instance.printMessage()
    }
    
}
