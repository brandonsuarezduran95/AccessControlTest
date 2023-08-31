//
//  SomeOpenClassSubClass.swift
//  SomeFramework
//
//  Created by Brandon Suarez on 7/12/23.
//

import Foundation
class SomeOpenClassSubClass: SomeOpenClass {
    override var someOpenProperty: String {
        "SomeOpenClassSubClass's overridden someOpenProperty"
    }
    
    override var somePublicProperty: String {
        "SomeOpenClassSubClass's overridden somePublicProperty"
    }
}
