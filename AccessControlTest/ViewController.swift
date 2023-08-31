//
//  ViewController.swift
//  AccessControlTest
//
//  Created by Brandon Suarez on 7/12/23.
//

import UIKit
import SomeFramework

class ViewController: UIViewController {
    
    let someOpenClass = SomeOpenClass()
    let somePublicClass = SomePublicClass()
    private let somePrivateProperty = 10
    fileprivate let someFilePrivateProperty = 20
    
    private let enumA = SomeEnum.a
    fileprivate let enumB = SomeOtherEnum.b
    
    // ui element
    let messageLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        openAccessLevel()
        publicAccessLevel()
        somePrivateMethod()
        setMessage()
        someOtherPrivateMethod(a: enumA, b: enumB)
    }


}

// MARK: - setUp
extension ViewController {
    func setUp() {
        view.backgroundColor = .systemBlue
        title = "Access Levels"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
}

// MARK: - openAccessLevel
extension ViewController {
    func openAccessLevel() {
        print("someOpenClass.\(someOpenClass.someOpenProperty)")
        print("someOpenClass.\(someOpenClass.somePublicProperty)")
    }
}

// MARK: -
extension ViewController {
    func publicAccessLevel() {
        print("\n")
        print("somePublicClass.\(somePublicClass.someOpenProperty)")
        print("somePublicClass.\(somePublicClass.somePublicProperty)")
    }
}

extension ViewController {
    private func somePrivateMethod() {
        print("Some private method")
    }
}

// MARK: - Function type
extension ViewController {
    private enum SomeEnum {
        
        case a
        
        var someComputedProperty: Int {
            10
        }
    }
    
    fileprivate enum SomeOtherEnum {
        
        case b
        
        var someComputedProperty: Int {
            20
        }
    }
    
    private func someOtherPrivateMethod(a: SomeEnum, b: SomeOtherEnum) {
        print("The result is: 30")
    }
}
