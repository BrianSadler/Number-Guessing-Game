//
//  main.swift
//  Guessing Game 2.0
//
//  Created by Brian Sadler on 8/17/18.
//  Copyright © 2018 Brian Sadler. All rights reserved.
//

import Foundation

var numberOfTries = 5

var randomNumber = Int(arc4random_uniform(99)) + 1

var guessedNumber: Int? = nil

print("Hey! Try guessing my number 1-100!")

var input = readLine()!

if let number = Int(input) {
    guessedNumber = number
} else {
    print("Try using a number this time")
}
if guessedNumber == randomNumber {
    print("You did it!")
}
else {
    print("Try again")
    if let guessedNumber = guessedNumber {
        if guessedNumber == randomNumber {
            print("You got it!")
        } else if guessedNumber > randomNumber {
            print("Go lower!")
           numberOfTries = numberOfTries - 1
        } else {
                print("Go higher!")
            numberOfTries = numberOfTries - 1
            }
        }
        
    }


repeat { input = readLine()!
}
while numberOfTries > 0

guard let guessedNumber = guessedNumber else {
    fatalError()
}

