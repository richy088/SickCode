//
//  ViewController.swift
//  Secret Number Game
//
//  Created by Richard Kim on 10/15/17.
//  Copyright © 2017 Richard Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0
    
    @IBOutlet weak var numberOfTriesLabel: UILabel!
    
    @IBAction func guessButton(_ sender: Any) {
        
        guard let number = Int(inputTextField.text!) else {return}
            if number > 30 {
                feedbackLabel.text = "A little lower"
            } else if number == 30 {
                feedbackLabel.text = "You got it right"
            } else if number < 30 {
                feedbackLabel.text = "A little higher"
            }
        
        counter += 1
        numberOfTriesLabel.text = "Number of tries: \(String(counter))"
        
        if number == 30 {
            winnerAlertController()
        } else
        {return}
        
    }
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var feedbackLabel: UILabel!
    
    @IBAction func showAnswerButton(_ sender: Any) {
        hiddenAnswerLabel.isHidden = false
    }
    @IBOutlet weak var hiddenAnswerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    func winnerAlertController() {
        let alert = UIAlertController(title:"WINNER", message: "You guessed the correct number", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

