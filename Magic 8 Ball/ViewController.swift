//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Claudia Munoz on 1/25/23.
//

import UIKit

class ViewController: UIViewController {
        // MARK: - Properties
    
        let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]


    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func generateAnswer() {
        let randomIndex = Int.random(in: 0..<answers.count)
        myLabel.text = answers[randomIndex]
    }
    
    @IBAction func shakeButton(_ sender: Any) {
        generateAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        generateAnswer()
    }
}

