import SwiftUI
import Foundation

struct QuizModel {
    var question: String?
    var options: [String]
    var answer: Int?
}

var myQuiz: [QuizModel] = [
    QuizModel (
        question: "Question 1",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 1),

    QuizModel (
        question: "Question 2",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 1),
    
    QuizModel (
        question: "Question 3",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 1),
    
    QuizModel (
        question: "Question 4",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 1),
    
    QuizModel (
        question: "Question 5",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 1)
]

func SaveScore (quiz: String, score: Int) {
    UserDefaults.standard.set(score, forKey: quiz)
}

func LoadScore (quiz: String) -> Int {
    return UserDefaults.standard.integer(forKey: quiz)
}
