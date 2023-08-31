//
//  SomePrivateClass.swift
//  AccessControlTest
//
//  Created by Brandon Suarez on 7/12/23.
//

import Foundation

private class SomePrivateClass {
    
    var someImplicitPrivateProperty: String {
        "someImplicitPrivateProperty"
    }
    
    fileprivate var someFilePrivateProperty: String {
        "someFilePrivateProperty"
    }
}
