//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    let askMeLabel = makeBoldLabel(withText: "Ask Me Anything..." )
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        view.backgroundColor = .cyan
        
        setupSubviews()
        setupImage()
        setupConstraints()
        }
    
   
    func setupSubviews() {
        view.addSubview(askMeLabel)
    }
    
    func setupImage() {
        
    }
    
    func setupButton() {
        
    }
    
    func setupConstraints() {
        askMeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            askMeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            askMeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }


}

