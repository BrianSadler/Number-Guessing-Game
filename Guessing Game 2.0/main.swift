//
//  main.swift
//  Guessing Game 2.0
//
//  Created by Brian Sadler on 8/17/18.
//  Copyright © 2018 Brian Sadler. All rights reserved.
//

import Foundation
 var Sup = false
repeat {
    var numberOfTries = 5
    
    let randomNumber = Int(arc4random_uniform(99)) + 1
    
    var guessedNumber: Int? = nil
    
    
    print("Try guessing my number 1-100!")
    repeat {
        repeat {
            let input = readLine()!
            if input == "idk"
            {
                print("oh k well it's \(randomNumber)")
            }
            if let number = Int(input) {
                guessedNumber = number
                
            }
                             else {
                print("Try using a number this time")
                guessedNumber = nil
            }
            
        } while guessedNumber == nil
        
        guard let guessedNumber = guessedNumber else {
            fatalError()
            
        }
        if guessedNumber < 1 || guessedNumber > 100 {
            print("Try a number between 1 and 100")
        }
            
        else if guessedNumber == randomNumber {
            print("You did it!")
            break
        }
            
        else if guessedNumber > randomNumber {
             numberOfTries = numberOfTries - 1
            print("you have \(numberOfTries) tries left")
            if numberOfTries == 0 {
                
            }
            else {
                 print("Go lower!")
            }
        } else if  guessedNumber < randomNumber
        {  numberOfTries = numberOfTries - 1
            print("you have \(numberOfTries) tries left!")
            if numberOfTries == 0
            {
                
            }else{
                
            
            print("Go higher!")
            }
        }
        if numberOfTries == 0 {
            print("the correct number was \(randomNumber).Thanks for playing!")
        }
                
        
                
            
        
        
        
        
        
    } while numberOfTries > 0 || guessedNumber == randomNumber
    print("Want to play again?")
    let input = readLine()!
    Sup = input.lowercased() == "y"
    
     if input != "yes"
    {
        print("k then")
        Sup = false
    }
    
} while Sup == true











