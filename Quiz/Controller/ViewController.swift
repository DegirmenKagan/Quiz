//
//  ViewController.swift
//  Quiz
//
//  Created by Kağan Değirmen on 27.05.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choiceButton1: UIButton!
    @IBOutlet weak var choiceButton2: UIButton!
    @IBOutlet weak var choiceButton3: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizLogic = QuizLogic()
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Bring first question
        updateUI()
    }
    
    @objc func updateUI(){
        // question choiceButton renewal
        questionLabel.text = quizLogic.getQuestionText()
        
        //setting choices from logic
        let answerChoices = quizLogic.getAnswers()
        choiceButton1.setTitle(answerChoices[0], for: .normal)
        choiceButton2.setTitle(answerChoices[1], for: .normal)
        choiceButton3.setTitle(answerChoices[2], for: .normal)
        
        //resetBackgroundColors
        choiceButton1.backgroundColor = UIColor.clear
        choiceButton2.backgroundColor = UIColor.clear
        choiceButton3.backgroundColor = UIColor.clear
        
        //update progressBar
        progressBar.progress = quizLogic.getProgress()
        scoreLabel.text = "Score: \(quizLogic.getScore())"
        
    }
    
    @IBAction func choiceSelected(_ sender: UIButton) {
        //check answer
        if quizLogic.checkAnswer(sender.currentTitle!){
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        //next question
        quizLogic.nextQuestion()
        
        //refresh UI to see nextQuestion with timer so observe the backgroundColor change done at top of this function
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
}

