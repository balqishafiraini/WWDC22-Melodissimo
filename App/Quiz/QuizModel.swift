import SwiftUI
import Foundation

struct QuizModel {
    var question: String?
    var options: [String]
    var answer: Int?
}

var myQuiz: [QuizModel] = [
    QuizModel (
        question: "Which tiles that belongs to numeral notation (1)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 4),

    QuizModel (
        question: "Which tiles that belongs to numeral notation (4.)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 0),
    
    QuizModel (
        question: "Which tiles that belongs to numeral notation (5)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 8),
    
    QuizModel (
        question: "Which tiles that belongs to numeral notation (7')?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 17),
    
    QuizModel (
        question: "Which tiles that belongs to numeral notation (7.)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 3),
    QuizModel (
        question: "Which tiles that belongs to numeral notation (1#)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 22),
    QuizModel (
        question: "Which tiles that belongs to numeral notation (5')?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 15),
    QuizModel (
        question: "Which tiles that belongs to numeral notation (2'#)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 28),
    QuizModel (
        question: "Which tiles that belongs to numeral notation (5.#)?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 20),
    QuizModel (
        question: "Which tiles that belongs to numeral notation (2')?",
        options: ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
        answer: 12),
].shuffled()

func SaveScore (quiz: String, score: Int) {
    UserDefaults.standard.set(score, forKey: quiz)
}

func LoadScore (quiz: String) -> Int {
    return UserDefaults.standard.integer(forKey: quiz)
}
