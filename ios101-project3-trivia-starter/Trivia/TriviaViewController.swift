//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Kelvin Chen on 6/22/25.
//

import UIKit

class TriviaViewController: UIViewController {
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerChoiceABtn: UIButton!
    @IBOutlet weak var answerChoiceBBtn: UIButton!
    @IBOutlet weak var answerChoiceCBtn: UIButton!
    @IBOutlet weak var answerChoiceDBtn: UIButton!
    
    var score = 0
    var currentIdx = 0
    var idxSet: Set<Int> = []
    var questionArr: [Int] = []
    var questionNumber = 1
    
    @IBAction func multipleChoiceQuestion(_ sender: UIButton) {
        let selectedButton: Int
        
        switch sender {
        case answerChoiceABtn: selectedButton = 0
        case answerChoiceBBtn: selectedButton = 1
        case answerChoiceCBtn: selectedButton = 2
        case answerChoiceDBtn: selectedButton = 3
        default: return
        }
        
        let idx = questionArr[currentIdx]
        if(selectedButton == triviaQuestions[idx].correctSolutionIdx) {
            score += 1
        }
        
        currentIdx += 1
        displayQuestions()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        startGame()
    }
    
    private func displayQuestions() {
        if(currentIdx == 4) {
            displayScore()
        }else {
            let idx = questionArr[currentIdx]
            configure(with: triviaQuestions[idx], questionNumber: questionNumber)
            questionNumber += 1
        }
    }
    
    private func configure(with question: TriviaQuestion, questionNumber: Int) {
        questionNumberLabel.text = "Question: \(questionNumber) / 4"
        genreLabel.text = "Genre: \(question.genre)"
        questionLabel.text = question.question
        answerChoiceABtn.setTitle(question.choices[0], for: .normal)
        answerChoiceBBtn.setTitle(question.choices[1], for: .normal)
        answerChoiceCBtn.setTitle(question.choices[2], for: .normal)
        answerChoiceDBtn.setTitle(question.choices[3], for: .normal)
    }
    
    private func displayScore() {
        let alert = UIAlertController(
            title: "Game Over",
            message: "Final Score: \(score) / 4",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true, completion: nil)
        reset()
    }
    
    private func startGame() {
        for _ in 1...4 {
            var questionIdx: Int;
            
            repeat {
                questionIdx = Int.random(in: 0..<triviaQuestions.count)
            } while (idxSet.contains(questionIdx))
            
            idxSet.insert(questionIdx)
            questionArr.append(questionIdx)
        }
        
        displayQuestions()
    }
    
    private func reset() {
        score = 0
        currentIdx = 0
        idxSet.removeAll()
        questionArr.removeAll()
        questionNumber = 1
        
        startGame()
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
