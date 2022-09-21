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
    let ballImages = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    let askMeLabel = makeBoldLabel(withText: "Ask Me Anything..." )
    
    
    let contentView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    let ballImageView: UIImageView = {
        let ballImage = UIImageView()
        
        ballImage.translatesAutoresizingMaskIntoConstraints = false
        ballImage.contentMode = UIView.ContentMode.scaleToFill
        
        return ballImage
    }()
    
    let askMeButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        view.backgroundColor = .cyan
        ballImageView.image = UIImage(named: ballImages[Int.random(in: 0...4)])
        
        setUpAskMeButton()
        setupViews()
       
        }
    
   
    func setupViews() {
        
        view.addSubview(askMeLabel)
        view.addSubview(ballImageView)
        view.addSubview(askMeButton)
        
    
    
        NSLayoutConstraint.activate([
            askMeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            askMeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            ballImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ballImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            ballImageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            ballImageView.topAnchor.constraint(equalTo: askMeLabel.bottomAnchor, constant: 50),
            ballImageView.bottomAnchor.constraint(equalTo: askMeLabel.bottomAnchor, constant: 300)

        ])
        
        NSLayoutConstraint.activate([
            askMeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            askMeButton.topAnchor.constraint(equalTo: ballImageView.bottomAnchor, constant: 80),
            askMeButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            askMeButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            askMeButton.bottomAnchor.constraint(equalTo: ballImageView.bottomAnchor, constant: 130)
        ])
        
    
    }
    



}

