//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
// Arrays - lists
var wordArray = ["I", "like", "to", "eat", "fruit", "my", "favourite"]
var wordArray2 = [String]()


for item in wordArray {
    print(item)

}

for i in 0...10{
    print(i)
}
// interactive view 
//var view = UIView(frame: <#T##CGRect#> (x: 0, y: 0, width: 320, height: 400))
//view.backgroundColor = UIColor.orangeColor()
//
//
//
//// create label
//var label = UILabel()
//label.text = wordArray[2]
//label.font = UIFont.systemFontOfSize(32)
//label.sizeToFit()
//label.center = CGPoint(x: 200, y:200)
//view.addsSubview(label)

for word in wordArray {
    var x = CGFloat(arc4random_uniform(300))
    var y = CGPoint(arc4random_uniform(480))
    label.center = CGPoint(x: x, y: y)
}