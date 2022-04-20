import SwiftUI
import Foundation

struct QuizModel {
    var question: String?
    var options: [String]
    var answer: Int?
}

var myQuiz: [QuizModel] = [
    QuizModel (
        question: "Which tiles that belongs to numeral notation (5.)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 1),

    QuizModel (
        question: "Which tiles that belongs to numeral notation (1)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 4),
    
    QuizModel (
        question: "Which tiles that belongs to numeral notation (3)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 6),
    
    QuizModel (
        question: "Which tiles that belongs to numeral notation (1)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 4),
    
    QuizModel (
        question: "Which tiles that belongs to numeral notation (5.)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 1),
    QuizModel (
        question: "Which tiles that belongs to numeral notation (1)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 4),
    QuizModel (
        question: "Which tiles that belongs to numeral notation (3)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 6),
    QuizModel (
        question: "Which tiles that belongs to numeral notation (6)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 9),
    QuizModel (
        question: "Which tiles that belongs to numeral notation (5)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 8),
    QuizModel (
        question: "Which tiles that belongs to numeral notation (3)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 6)
]

func SaveScore (quiz: String, score: Int) {
    UserDefaults.standard.set(score, forKey: quiz)
}

func LoadScore (quiz: String) -> Int {
    return UserDefaults.standard.integer(forKey: quiz)
}
