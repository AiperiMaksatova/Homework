import UIKit

var str = "Hello, playground"
//all types
//var number: Int = 5
var aplleprice: Double = 3.5234567890  // this better then float
var bananaprice: Float = 1.222
var iAmMarried: Bool = true
var iAmSleeping: Bool = false
var myName: String = "Aiperi"
var smile: Character = "a"
// if you want type conversion
let a: Double = 10.5
let b: Int = Int (a)
 print(b)
//let Emily:Int = 7
//let wasBorn: Double = Double(Emily)
//print(wasBorn)

let h: Double = 22.6
let d: Int = 30
let total: Double = h * Double(d)
print(total)
// concatenation
let firstText:String = "My weight calculate"
var weight:Double = 12.3
let secondText:String = "pound"
let theFinalText:String = firstText + String (weight) + secondText
print(theFinalText)
 
//interpreter
var Name = "Emily"
print("My baby name is \(Name)")

//operator an actyion
var myAge = 24
myAge > 10 && myAge < 30

var brotherAge = 18
brotherAge > 10 && brotherAge < 15

let custumerName = "Alla"
custumerName == "Bella"
custumerName == "Bella" || custumerName == "Alla"



func mynumber ( _ value: inout Int) {
    value += 1
    print(value)
}
var number = 12
print(number)
mynumber(&number)
print(number)




let groupInfo: String = "ios Dev"  // constant name: type

var personInGroup: Int = 16 //peremennaya name: type

var dreamsOfGroup = "we want" + " " + "to be ios Dev "

var message = "and we are 16 people"

var newMessage =  dreamsOfGroup + message
print(newMessage)


let womanInfo:(String,String,String,String,String,String,String,String) = ("Aya", "Aiperi", "Astra", "Asol", "Alina", "Salamat", "Syrga", "Jika")

let first = womanInfo.0
let two = womanInfo.1
let three = womanInfo.2
let four = womanInfo.3
let five = womanInfo.4
let six = womanInfo.5
let seven = womanInfo.6

let menInfo: (String,Bool,Int) = ("Nurik", true, 33)
let (name, isMarried, age) = menInfo
print(name)
print(name,age)
print(isMarried)






