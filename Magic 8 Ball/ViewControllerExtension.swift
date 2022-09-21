//
//  ViewControllerExtension.swift
//  Magic 8 Ball
//
//  Created by Mpilo Pillz on 2022/09/21.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

extension ViewController {

    func setUpAskMeButton() {
        
        askMeButton.setTitle("ASK", for: .normal)
        askMeButton.addTarget(self, action: #selector(askMeButtonPressed), for: UIControl.Event.touchUpInside)
        
        askMeButton.backgroundColor = .white
        askMeButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: CGFloat(20))
        askMeButton.layer.cornerRadius = 10
    }
    
    @objc func askMeButtonPressed(sender: UIButton) {
        ballImageView.image = UIImage(named: ballImages[Int.random(in: 0...4)])
    }

}
