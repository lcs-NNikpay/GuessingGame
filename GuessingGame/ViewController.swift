//
//  ViewController.swift
//  GuessingGame
//
//  Created by Nikpay, Nicki on 2018-01-09.
//  Copyright © 2018 Nikpay, Nicki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK : Outlets
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var guessedNumber: UITextField!
    
    @IBOutlet weak var buttonPlayAgain: UIButton!
    // MARK Properties
    var game = GuessingGame()
    
    // MARK Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK: Actions
    @IBAction func checkGuess(_ sender: Any) {

        
        // First we need to unwrap the optional text fom
        // the text field
        // InputGiven is a string (non-optional0 - Guaranteed
        // to contain a value ( it is not nill)
        guard let inputGiven = guessedNumber.text else {
             // If the input was nil, stop, and exit the function
            return
           
        }
        
        guard let number = Int(inputGiven) else {
            // we couldn't make an integer
            // e.g. : somebody typed five instead of 5
            return
        }
        
        // Use the model to check whether the guess is correct
        // if-else if-else
        labelMessage.text = game.compareNumbers(guessMade: number)
    }
    @IBAction func resetGame(_ sender: Any) {
    }
}


