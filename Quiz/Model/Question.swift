//
//  Question.swift
//  Quiz
//
//  Created by Kağan Değirmen on 27.05.2023.
//

import Foundation

struct Question{
    let question: String
    let answers: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer:String){
        self.question = q
        self.answers = a
        self.correctAnswer = correctAnswer
    }
}
