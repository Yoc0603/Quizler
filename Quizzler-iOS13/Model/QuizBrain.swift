//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Yavuz on 01/06/2025.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Oksijen bir elementtir.", a: "True"),
        Question(q: "Altın (Au) doğada serbest halde bulunabilir.", a: "True"),
        Question(q: "Elementler kimyasal yollarla daha basit maddelere ayrılabilir.", a: "False"),
        Question(q: "Su, hidrojen ve oksijen elementlerinden oluşur.", a: "True"),
        Question(q: "Altın, doğada bileşik halinde bulunur.", a: "False"),
        Question(q: "Kimyada H harfiyle gösterilen element hidrojen elementidir.", a: "True"),
        Question(q: "Karbon, canlıların yapısında bulunan temel elementlerden biridir.", a: "True"),
        Question(q: "Demir elementi manyetik özellik göstermez.", a: "False"),
        Question(q: "Bütün elementler gaz halindedir.", a: "False"),
        Question(q: "Suyun kaynama noktası 100°C’dir.", a: "True"),
        Question(q: "Sodyum tuzun yapısında bulunan bir elementtir.", a: "True"),
        Question(q: "Bir bileşik, tek bir elementten oluşur.", a: "False")
    ]
    
    var questionNumber = 0
    var score = 0
    
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
}
