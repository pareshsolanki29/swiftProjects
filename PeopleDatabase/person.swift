//
//  person.swift
//  PeopleDatabase
//
//  Created by paresh solanki on 12/16/15.
//  Copyright © 2015 Fresh Digital. All rights reserved.
//

import Foundation

//: Playground - noun: a place where people can play


class Person {
    var firstName = " "
    var lastName = " "
    var age = 0
    
    
    func input() -> String {
        let keyboard = NSFileHandle.fileHandleWithStandardInput()
        let inputData = keyboard.availableData
        let rawString = NSString(data: inputData, encoding:NSUTF8StringEncoding)
        if let string = rawString {
            return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        } else {
            return "Invalid input"
        }
    }
    
    
    
    func changeFirstName(newFirstName:String){
        firstName = newFirstName
    }
    
    func enterInfo(){
        print("enter your first name")
        firstName = input()
        print("enter your last name")
        lastName = input()
        print("enter you age")
        let userAge = Int(input())
        
        if let newAge = userAge {
            age = newAge
        }
    }
   
    func printInfo(){
        print("first name: \(firstName), last name: \(lastName) age \(age) years ")
    }
}

