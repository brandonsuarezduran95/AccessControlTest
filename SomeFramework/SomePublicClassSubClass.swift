//
//  SomePublicClassSubClass.swift
//  SomeFramework
//
//  Created by Brandon Suarez on 7/12/23.
//

import Foundation

class SomePublicClassSubClass: SomePublicClass {
    override var someOpenProperty: String {
        "SomePublicClassSubClass's overridden someOpenProperty"
    }
    
    override var somePublicProperty: String {
        "SomePublicClassSubClass's overridden somePublicProperty"
    }
}
