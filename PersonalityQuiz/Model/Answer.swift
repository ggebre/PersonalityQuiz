//
//  Answer.swift
//  PersonalityQuiz
//
//  Created by Getu Gebre on 3/4/19.
//  Copyright © 2019 Getu Gebre. All rights reserved.
//

import Foundation

struct Answer {
    var text : String
    var type : AnimalType
}
enum AnimalType : Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    var definition : String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy."
      
        }
    }
}
