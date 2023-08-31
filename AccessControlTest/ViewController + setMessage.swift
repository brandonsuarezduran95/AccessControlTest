//
//  ViewController + setMessage.swift
//  AccessControlTest
//
//  Created by Brandon Suarez on 7/12/23.
//

import UIKit

extension ViewController {
    func setMessage() {
        view.addSubview(messageLabel)
        
        messageLabel.textColor = .white
        messageLabel.font = .systemFont(ofSize: 20, weight: .medium, width: .standard)
        messageLabel.textAlignment = .center
        messageLabel.numberOfLines = 3
        messageLabel.text = "Check the log console to see the access levels, the framework and the test target as well"
        
        
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            messageLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            messageLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            messageLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            messageLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20)
        ])
    }
}
