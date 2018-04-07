//
//  FieldSurveyJSONLoader.swift
//  FieldSurvey
//
//  Created by Max Taylor on 4/6/18.
//  Copyright © 2018 Max Taylor. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader {
    class func load(fileName: String) -> [FieldSurvey] {
        var surveys = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            surveys = FieldSurveyJSONParser.parse(data)
        }
        
        return surveys
    }
}
