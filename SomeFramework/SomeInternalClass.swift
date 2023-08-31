//
//  SomeInternalClass.swift
//  AccessControlTest
//
//  Created by Brandon Suarez on 7/12/23.
//

import Foundation

class SomeInternalClass {
    
    // even if you declare other elements with a higher access level, the access level is bounded to the class's definition.
    var someImplicitInternalProperty: String {
        "someOpenVar"
    }
    
    fileprivate var someFilePrivateProperty: String {
        "someInternalProperty"
    }
    
    private var somePrivateVar: String {
        "somePrivateVar"
    }
}
