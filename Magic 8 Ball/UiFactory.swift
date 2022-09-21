//
//  UiFactory.swift
//  Magic 8 Ball
//
//  Created by Mpilo Pillz on 2022/09/21.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

func makeBoldLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = text
    label.textColor = .white
    label.font = UIFont.boldSystemFont(ofSize: 32)

    return label
}
