//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Ahmet Mücahid BOZKURT on 23.09.2019.
//  Copyright © 2019 Ahmet Mucahid BOZKURT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Variables
    var myPoints = 0
    var computerPoints = 0
    let array = ["rock", "paper", "scissors"]
    
    //MARK: IBOutlets
    @IBOutlet weak var myChoiceLabel: UILabel!
    @IBOutlet weak var computerChoiceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var myPointsLabel: UILabel!
    @IBOutlet weak var computerPointsLabel: UILabel!
    
    //MARK: IBActions
    @IBAction func rockSelected(_ sender: Any) {
        let randomSelected = Int(arc4random_uniform(3))
        let computerSelected = array[randomSelected]
        myChoiceLabel.text = "Your: Rock"
        
        if computerSelected == "rock" {
            computerChoiceLabel.text = "Computer: Rock"
            resultLabel.text = "NO WINNER!"
            
        } else if computerSelected == "paper" {
            computerChoiceLabel.text = "Computer: Paper"
            resultLabel.text = "COMPUTER"
            computerPoints+=1
            computerPointsLabel.text = String(computerPoints)
            
        } else if computerSelected == "scissors" {
            computerChoiceLabel.text = "Computer: Scissors"
            resultLabel.text = "YOU"
            myPoints+=1
            myPointsLabel.text = String(myPoints)
        }
    }
    
    @IBAction func paperSelected(_ sender: Any) {
        let randomSelected = Int(arc4random_uniform(3))
        let computerSelected = array[randomSelected]
        myChoiceLabel.text = "Your: Paper"
        
        if computerSelected == "rock" {
            computerChoiceLabel.text = "Computer: Rock"
            resultLabel.text = "YOU"
            myPoints+=1
            myPointsLabel.text = String(myPoints)
            
        } else if computerSelected == "paper" {
            computerChoiceLabel.text = "Computer: Paper"
            resultLabel.text = "NO WINNER!"
            
        } else if computerSelected == "scissors" {
            computerChoiceLabel.text = "Computer: Scissors"
            resultLabel.text = "COMPUTER"
            computerPoints+=1
            computerPointsLabel.text = String(computerPoints)
        }
    }
    
    @IBAction func scissorsSelected(_ sender: Any) {
        let randomSelected = Int(arc4random_uniform(3))
        let computerSelected = array[randomSelected]
        myChoiceLabel.text = "Your: Scissors"
        
        if computerSelected == "rock" {
            computerChoiceLabel.text = "Computer: Rock"
            resultLabel.text = "COMPUTER"
            computerPoints+=1
            computerPointsLabel.text = String(computerPoints)
            
        } else if computerSelected == "paper" {
            computerChoiceLabel.text = "Computer: Paper"
            resultLabel.text = "YOU"
            myPoints+=1
            myPointsLabel.text = String(myPoints)
            
        } else if computerSelected == "scissors" {
            computerChoiceLabel.text = "Computer: Scissors"
            resultLabel.text = "NO WINNER!"
        }
    }
    
    @IBAction func resetButton(_ sender: Any) {
        myPoints = 0
        myPointsLabel.text = String(myPoints)
        computerPoints = 0
        computerPointsLabel.text = String(computerPoints)
        myChoiceLabel.text = "Your:"
        computerChoiceLabel.text = "Computer:"
        resultLabel.text = ""
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

