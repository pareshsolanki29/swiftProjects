//
//  userInput.swift
//  My First Project
//
//  Created by Ry Bristow on 6/21/14.
//  Copyright (c) 2014 Ry Bristow. All rights reserved.
//

import Foundation

func input() -> String {
  let keyboard = FileHandle.withStandardInput
  let inputData = keyboard.availableData
  let rawString = NSString(data: inputData, encoding:String.Encoding.utf8)
  if let string = rawString {
    return string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
  } else {
    return "Invalid input"
  }
}

func randomIntBetween(_ low:Int, high:Int) -> Int {
  let range = high - (low - 1)
  return (Int(arc4random()) % range) + (low - 1)
}
