//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Getu Gebre on 3/4/19.
//  Copyright © 2019 Getu Gebre. All rights reserved.
//

import Foundation

struct Question {
    var text : String
    var type : ResponseType
    var answers : [Answer]
}
enum ResponseType {
    case single, multiple, ranged
}
