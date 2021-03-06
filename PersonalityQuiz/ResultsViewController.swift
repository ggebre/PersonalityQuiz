//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Getu Gebre on 3/4/19.
//  Copyright © 2019 Getu Gebre. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var responses : [Answer]!
    
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    @IBOutlet weak var resultAnswerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    func calculatePersonalityResult() {
        var frequencyOfAnswers : [AnimalType: Int] = [:]
        let responseTypes = responses.map{$0.type}
        
        for response in responseTypes {
        frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        let mostCommonAnswer = frequencyOfAnswers.sorted {$0.1 > $1.1}.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
