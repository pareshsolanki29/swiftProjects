//
//  main.swift
//  PeopleDatabase
//
//  Created by paresh solanki on 12/16/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import Foundation
var response: String
var people: [Person] = []

repeat{

var newPerson = Person()

    
newPerson.enterInfo()
people.append(newPerson)
newPerson.printInfo()
    
    
print("do you want to add one more name enter (y/n)")
    
response = input()

    
} while(response == "y")
print("total no of people on record :\(people.count)")

for onePerson in people{
    onePerson.printInfo()
    }