//
//  main.swift
//  My Project
//
//  Created by paresh solanki on 12/16/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import Foundation


var turn = 1
let answer = randomIntBetween(1, high: 100)

while(true){

print(" guess # \(turn) enter a number between 1 and 100")

 let userInput = input()
 let userInputNum = Int(userInput)



   if let guess = userInputNum{
       if(guess < answer){
         print ("you guessed little lower than the right answer")
          } else if(guess > answer){
            print("you guessed little higher")
             } else{
              print("you guessd the right no\(answer) it took you \(turn) tries")
               break
}
}
else {
   print("invalid entry enter a number")
    continue
}
    turn = turn + 1
}