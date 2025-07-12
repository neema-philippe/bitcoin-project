//
//  BitcoinViewController.swift
//  RPractice
//
//  Created by Neema Philippe on 7/11/25.
//

import Foundation
import UIKit

class BitcoinViewController: UIViewController {
    // MARK: UI Elements
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Loading prices..."
        label.font = UIFont.systemFont(ofSize: 10)
        label.backgroundColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Press", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        // Do any additional setup after loading the view.
    }
    
    private func setUpViews() {
        view.addSubview(label)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }


}
