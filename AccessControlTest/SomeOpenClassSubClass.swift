//
//  SomeOpenClassSubClass.swift
//  AccessControlTest
//
//  Created by Brandon Suarez on 7/12/23.
//

import Foundation
import SomeFramework

class SomeOpenClassSubClass: SomeOpenClass {
    override var someOpenProperty: String {
        "SomeOpenClassSubClass's overridden someOpenProperty"
    }
    
    // You cannot override public access elements outside of its module, this creates an error, you can only override open access elements outside of its module
///    override var somePublicProperty: String {
///        "SomeOpenClassSubClass's overridden somePublicProperty"
///    }
    
}

