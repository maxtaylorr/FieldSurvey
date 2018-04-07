//
//  FieldSurvey.swift
//  FieldSurvey
//
//  Created by Max Taylor on 4/6/18.
//  Copyright © 2018 Max Taylor. All rights reserved.
//

import Foundation

struct FieldSurvey {
    let classificationName: Classification
    let title: String
    let description: String
    let date: Date
    
    init(classification: Classification, title: String, description: String, date: Date) {
        self.classificationName = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(classificationName: String, title: String, description: String, date: Date) {
        if let classification = Classification(rawValue: classificationName) {
           self.init(classification: classification, title: title, description: description, date: date)
        } else {
            return nil
        }
    }
}
