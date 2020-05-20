import UIKit

var str = "Hello, playground"
//1.Напишите функцию с именем printFullName,
//которая принимает две строки с именами firstName и lastName.
//Функция должна распечатать полное имя, определенное как
//firstName + " " + lastName.
//Используйте его, чтобы распечатать свое полное имя.

func printFullName (fistName: String, lastName: String) {
    let fullName = fistName + " " + lastName
    print (fullName)
}
printFullName(fistName: "Aiperi", lastName: "Esenbay")

//func printFullName (firstName: String, lastName: String) {
//    let fullName = firstName + " " + lastName
//    print (fullName)
//}
//printFullName(firstName: "Aiperi", lastName: "Maksatova")


//2.Измените функцию printFullName, чтобы не иметь внешнего имени ни для одного из параметров.
//func printFullName (_ firstName: String, _ lastName: String) {
//    let fullName = firstName + " " + lastName
//    print (fullName)
//}
//printFullName( "Aiperi", "Maksatova")

func printFullName ( _ firstName: String, _ lastName: String) {
    let fullName = firstName + " " + lastName
    print (fullName)
}
printFullName("Aiperi",  "Maksatova")



//func printFullName ( _ firstName: String, _ lastName: String) {
//  let fullName = firstName + " " + lastName
//  print(fullName)
//}
// printFullName ( "Anna", "Ivanova")



//3.Напишите функцию с именем createInfo,
//которая принимает две строки с именами firstName и lastName и
//одно целое число с именем age.
//И эта функция должна возвращать полное имя и возраст в виде строки.
//Используйте его, чтобы сохранить собственное полное имя и возраст в константе.

func createInfo (firstName: String, lastName: String, age: Int) -> String {
    return " My full name is \(firstName) \(lastName). I am \(age) years old."
}
let myFullName = createInfo (firstName: "Aiperi", lastName: "Maksatova", age: 24)
print(myFullName)





//func createInfo (firstName: String, lastName: String, age: Int) -> String {
//let answer = "\(firstName) \(lastName) \(age)"
//    return "My full name is \(firstName) \(lastName). I am \(age)."
//}
//let finalAnswer = createInfo (firstName: "Asol", lastName: "Gold", age: 17)
//print (finalAnswer)






//4.Измените createInfo, чтобы он возвращал кортеж,
//содержащий как полное имя, так и возраст. Кортеж должен быть с наименованиями.
//Используйте эту функцию, чтобы создать константы которые будут содержать полное имя и возраст по отдельности.

func mycreateInfo (firstName: String, lastName: String, age: Int) -> (fullName: String, age: Int) {
    let FullName = firstName + " " + lastName
    return (FullName, age)
}
let results = mycreateInfo (firstName: "Aiperi", lastName: "Maksatova", age: 24)
let FullName = results.fullName
let myAge = results.age






//func createInfo (firstName: String, lastName: String, age: Int) -> (fullName: String, age: Int) {
//    let fullName = firstName + " " + lastName
//    return (fullName, age)
//}
//let results = createInfo (firstName: "Asol", lastName: "Gold", age: 17)
//let myFullName = results.fullName
//let myAge = results.age


//5.Напишите функцию с именем isOddNumber, которая принимает целое число и возвращает булево значение в зависимости четное число или не четное. Если параметр неделится на два булево значение должно быть true,
//если делиться то false. Используйте эту функцию в примере.
//1 variant
func isOddNumber (number: Int) -> Bool {
    let BB = number % 2 == 1 ? true : false
    return BB
}
let myexample = isOddNumber(number: 22)
print(myexample)


//func isOddNumber (число: Int) -> Bool {
//let AA = число % 2 == 1 ? true : false
//return AA
//}
//let myExample = isOddNumber (число: 23)
//print (myExample)
//
//
//
////2 variyant
//func isOddNumber (_ number: Int) -> Bool {
//  var isOdd = false
//  if number % 2 == 1 {
//    isOdd = true
//  } else {
//    isOdd = false
//  }
//  return isOdd
//}


// 3 variant
//func isOddNumberAlternativeSoulution(_ number: Int) -> Bool {
//  return number % 2 == 1 ? true : false  // Ternary condition Тернарное условие
//}
//11:22
//let isFiveOdd = isOddNumber(5)
//let isSixOdd = isOddNumber(6)
//let isNineOdd = isOddNumberAlternativeSoulution(9)
//let isTenOdd = isOddNumberAlternativeSoulution(10)
