//
//  TriviaQuestions.swift
//  Trivia
//
//  Created by Kelvin Chen on 6/22/25.
//

import Foundation

struct TriviaQuestion {
    let genre: String
    let question: String
    let choices: [String]
    let correctSolutionIdx: Int
}

let triviaQuestions: [TriviaQuestion] = [
    TriviaQuestion(
        genre:"Geography",
        question: "What is the capital of the U.S?",
        choices: ["Washington DC", "New York City", "Pennsylvania", "Florida"],
        correctSolutionIdx: 0
    ),
    
    TriviaQuestion(
        genre:"Geography",
        question: "How many continents are there on Earth?",
        choices: ["5", "6", "7", "8"],
        correctSolutionIdx: 2
    ),
    
    TriviaQuestion(
        genre:"Science",
        question: "Which planet is known as the Red Planet?",
        choices: ["Earth", "Mars", "Jupiter", "Venus"],
        correctSolutionIdx: 1
    ),
    
    TriviaQuestion(
        genre:"Science",
        question: "What is the  chemical symbol for water?",
        choices: ["WO", "H2O", "OH2", "HHO"],
        correctSolutionIdx: 1
    ),
    
    
    TriviaQuestion(
        genre:"Science",
        question: "Which part of the cell contains DNA?",
        choices: ["Nucleus", "Cytoplasm", "Cell membrane", "Mitochondria"],
        correctSolutionIdx: 0
    ),
    
    TriviaQuestion(
        genre:"Science",
        question: "Which planet is known for its prominent rings?",
        choices: ["Earth", "Mars", "Jupiter", "Saturn"],
        correctSolutionIdx: 3
    ),
    
    TriviaQuestion(
        genre:"Science",
        question: "What is the powerhouse of the cell",
        choices: ["Nucleus", "Ribosome", "Mitochondria", "Golgi apparatus"],
        correctSolutionIdx: 2
    ),
    
    TriviaQuestion(
        genre:"History",
        question: "What year did the Titanic sink?",
        choices: ["1905", "1912", "1918", "1923"],
        correctSolutionIdx: 1
    ),
    
    TriviaQuestion(
        genre:"History",
        question: "Who was the first President of the United States?",
        choices: ["Abraham Lincoln", "Thomas Jefferson", "George Washington", "Woodrow Wilson"],
        correctSolutionIdx: 2
    ),
    
    TriviaQuestion(
        genre:"History",
        question: "What year did World War 2 end?",
        choices: ["1942", "1945", "1948", "1950"],
        correctSolutionIdx: 1
    ),
    
    TriviaQuestion(
        genre:"History",
        question: "What ancient civilization built the pyramids?",
        choices: ["Greek", "Roman", "Mayan", "Egyptian"],
        correctSolutionIdx: 3
    ),
    
    TriviaQuestion(
        genre:"History",
        question: "Who was the British Prime Minister during most of World War 2?",
        choices: ["Winston Churchill", "Neville Chamberlain", "Thomas Jefferson", "Alexander Hamilton"],
        correctSolutionIdx: 0
    ),
    
    
]


