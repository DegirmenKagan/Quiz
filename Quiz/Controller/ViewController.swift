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
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Bring first question
        updateUI()
    }

    func updateUI(){
        // question choiceButton renewal
    }

    @IBAction func choiceSelected(_ sender: UIButton) {
        //check answer
        
        //next question
    }
}

