//
//  ViewController.swift
//  Rock_Paper_Scissors
//
//  Created by Rachel Combs on 9/18/20.
//  Copyright © 2020 Rachel Combs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var computerGuess: UILabel!
    
    @IBOutlet weak var userGuess: UILabel!
    
    @IBOutlet weak var winner: UILabel!
    
    
    enum Guess: String {
        case rock = "Rock"
        case paper = "Paper"
        case scissor = "Scissor"
    }

    
    enum Winner: String {
        case user = "You won!"
        case computer = "They won!"
        case tie = "It's a tie!"
    }
    
    
    let guesses: [Guess] = [.rock, .paper, .scissor]
    
    @IBAction func userChoice(_ sender: UIButton) {
    let tappedButton = sender.tag
        switch tappedButton {
        case 1:
            winner.text = (determineWinner(user: .rock, computer: generateComputerGuess())).rawValue
        case 2:
            winner.text = (determineWinner(user: .paper, computer: generateComputerGuess())).rawValue
        case 3:
            winner.text = (determineWinner(user: .scissor, computer: generateComputerGuess())).rawValue
        default:
            print("I am not sure what button was tapped")
        }
    }
    func generateComputerGuess() -> Guess {
        return guesses.randomElement()!
    }
    
    func determineWinner(user: Guess, computer: Guess) -> Winner {
        
        userGuess.text = "You guessed \(user.rawValue)"
        computerGuess.text = "Computer guessed: \(computer.rawValue)"
        
        switch user {
        case .rock:
            if computer == .paper {
                return .user
            } else if computer == .scissor {
                return .computer
            } else {
                return .tie
        }
        case .paper:
            if computer == .scissor {
                    return .user
                } else if computer == .rock {
                    return .computer
                } else {
                    return .tie
            }
        case .scissor:
            if computer == .rock {
                    return .user
                } else if computer == .paper {
                    return .computer
                } else {
                    return .tie
            }
    }
    }
}
