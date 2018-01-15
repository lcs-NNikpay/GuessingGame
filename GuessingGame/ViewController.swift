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
    @IBOutlet weak var guessedNumber: UITextField!
    
    // MARK Properties
    let numberToGuess = arc4random_uniform(501) // Generate a random number between 0 and 500
    
    // MARK Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Let's see what random actually is
        print ( "The number to guess is \(numberToGuess)")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK: Actions
    @IBAction func checkGuess(_ sender: Any) {
        print( "A guess was made.")
        print("<#T##items: Any...##Any#>")
        
        // First we need to unwrap the optional text fom
        // the text field
        // InputGiven is a string (non-optional0 - Guaranteed
        // to contain a value ( it is not nill)
        guard let inputGiven = guessedNumber.text else {
             // If the input was nil, stop, and exit the function
            return
           
        }
        
        guard let guessedNumber = Int(inputGiven) else {
            // we couldn't make an integer
            // e.g. : somebody typed five instead of 5
            return
        }
        
        // Compare the guess made to the secret number
        if guessedNumber == numberToGuess {
            print("You got it! ")
        } else if guessedNumber > numberToGuess {
            print ("Guess lower ")
        }else {
            print ("guess higher")
        }
    }
}

