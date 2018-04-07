//
//  classification.swift
//  FieldSurvey
//
//  Created by Max Taylor on 4/6/18.
//  Copyright © 2018 Max Taylor. All rights reserved.
//

import UIKit

enum Classification: String {
    case amphibian
    case bird
    case reptile
    case fish
    case plant
    case insect
    case mammal
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
