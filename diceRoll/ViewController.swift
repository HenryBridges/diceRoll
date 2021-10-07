//
//  ViewController.swift
//  diceRoll
//
//  Created by Harry Bridges on 07/10/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputGuess: UITextField!
    
    
    @IBOutlet weak var resultText: UILabel!
    
    
    @IBAction func submitGuess(_ sender: Any) {
        inputGuess.resignFirstResponder()
        let userGuess = Int(inputGuess.text!)
        let diceTotal = Int.random(in: 2..<13)
        
        if userGuess == diceTotal {
            resultText.text = "Correct!"
        }else{
            resultText.text = "Incorrect, the roll was \(diceTotal)"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

