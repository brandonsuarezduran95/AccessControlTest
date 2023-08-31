//
//  SomePublicProtocol + SomePrivateProtocol.swift
//  SomeFramework
//
//  Created by Brandon Suarez on 7/13/23.
//

import Foundation

public protocol SomePublicProtocol {
    var propertyA: Int { get }
    var propertyB: Int { get }
}

internal protocol SomeInternalProtocol {
    associatedtype SomeType
    var propertyC: Int { get }
    var propertyD: Int { get }
}

fileprivate protocol SomeFilePrivateProtocol {
    var propertyE: Int { get }
    var propertyF: Int { get }
}

// apparently declaring private a protocol does nothing, because when a type conforming it, the access level of its requirements
// will be file-private
private protocol SomePrivateProtocol {
    var propertyG: Int { get }
    var propertyH: Int { get }
}

struct SomeStruct { }
// MARK: - conforming to protocols test
open class ClassA: SomePublicProtocol, SomeInternalProtocol, SomeFilePrivateProtocol {
    typealias SomeType = SomeStruct
    
    public var propertyA: Int = 0
    
    public var propertyB: Int = 0
    
    internal var propertyC: Int = 1
    
    internal var propertyD: Int = 1
    
    fileprivate var propertyE: Int = 2
    
    fileprivate var propertyF: Int = 2
}

// you cannot add an access level to an extension that is conforming a protocol
extension ClassA: SomePrivateProtocol {
    fileprivate var propertyG: Int {
        3
    }
    
    fileprivate var propertyH: Int {
        3
    }
}

public extension ClassA {
    func methodA() {
        print("Method A")
    }
    
    func methodB() {
        print("Method B")
    }
}

extension ClassA {
    public func methodC() {
        print("method C")
    }
}

//
class ClassB {
    let instance = ClassA()
    
    func perform() {
        instance.propertyA += 1
        instance.propertyB += 1
        instance.propertyC += 1
        instance.propertyD += 1
        instance.propertyE += 1
        instance.propertyF += 1
        print(instance.propertyG)
        print(instance.propertyH)
    }
}
