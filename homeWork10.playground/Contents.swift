import UIKit

var str = "Hello, playground"

// exisises

 
var myCustumers = ["Alla":35, "Katya":38, "Janna":26, "Karina":32, "Zarina":39, "Jibek":28, "Bella": 45, "Mariya": 48]

func returnAge30AndLess(client: [String:Int]) -> [String] {
    var returnCustumer = [String]()
    for (name, age) in client {
        if age <= 30 {
            returnCustumer.append(name)
        }
    }
    return returnCustumer
}

returnAge30AndLess(client: myCustumers)

func returnAge40AndLess(client: [String:Int]) -> [String] {
    var returnCustumer = [String]()
    for (name, age) in client {
        if age >= 35 {
        returnCustumer.append(name)
        }
    }
    return returnCustumer
}
returnAge40AndLess(client: myCustumers)

// ussauly func
func add(a:Int, b:Int) -> Int {
    return a + b
}

let function2 = add
function2(3,4)

// zamikanie
var  addClosure = { (a: Int, b:Int) -> Int in
    return a * b
}
addClosure(7,8)


func compare20AndLess(age: Int) -> Bool {
    return age <= 20
}
compare20AndLess(age: 19)

func compare30AndMore(age:Int) -> Bool {
    return age >= 30
}
var function30AndMore = compare30AndMore
compare30AndMore(age: 30)
//func kak zamikanie


func returnNames(client: [String:Int], function: (Int) -> Bool) -> [String] {
    var returnCustumer = [String]()
    for (name, age) in client {
        if function(age) {
            returnCustumer.append(name)
        }
    }
    return returnCustumer
}
returnNames(client: myCustumers, function: function30AndMore)
returnNames(client: myCustumers, function: compare30AndMore(age:))

// sozdanie zamikaniy

func returnNames(client: [String:Int], closure: (Int) -> Bool) -> [String] {
    var returnCustumer = [String]()
    for (name, age) in client {
        if closure(age) {
            returnCustumer.append(name)
        }
    }
        return returnCustumer
}

returnNames(client: myCustumers, closure: {(age) -> Bool in
    return age >= 40
})

returnNames(client: myCustumers, closure: {(age) -> Bool in
    return age <= 40
})





//sokrashenie zamikaniy

returnNames(client: myCustumers, closure: {(age) -> Bool in age >= 40
})

returnNames(client: myCustumers, closure: {age in age >= 40})
returnNames(client: myCustumers, closure: {$0 >= 40})
returnNames(client: myCustumers, closure: {$0 >= 40})
returnNames(client: myCustumers, closure: {$0 >= 40})



//zahvat vlojeniy function

func makeIncrement(forIncrement amount: Int) -> () -> Int {
    var runninTotal = 0
    func increment() -> Int {
        runninTotal += amount
        return runninTotal
    }
    return increment
}

var incrementByTen = makeIncrement(forIncrement: 10)

var incrementByFive = makeIncrement(forIncrement: 5)

incrementByFive()
incrementByFive()
incrementByFive()
incrementByTen()
incrementByTen()
incrementByTen()


//sortirovka s pomosh'uy zamokaniy
// metod forEach

let numbers = [1,2,3,4,5,6,7,8,9,10]

numbers.forEach {(number) in
print("kvadrat number \(number) = \(number * number)")
}

// metod filter

let largerThanFive = numbers.filter {(number) -> Bool in number > 5 }

// metod first

let firstLargeElement = numbers.first { (number) -> Bool in number > 7
}

//map

var increasedByOne = numbers.map {(element) -> Int in
    element + 1
}

let stringsArray = ["1", "2", "3", "4", "10", "21", "25", "Aiperi"]

let integerArray = stringsArray.map {(element) -> Int? in
    Int(element)
}

//compact Map
let integersArray = stringsArray.compactMap { (element) -> Int? in
    Int(element)
}

// reduce

let numbersArray = [2,3,4,5,6,7,12]

let integerArray1 = numbersArray.reduce(0) {(result, element) -> Int in
    print(result)
    return result + element
}

// dropFirst(), dropLast()

let numbersArray2 = [2,4,6,8,10,12]

let removeFirst = numbersArray2.dropFirst()
let removeFirstThree = numbersArray2.dropFirst(3)

let removeLast = numbersArray2.dropLast()
let removeLastTwo = numbersArray2.dropLast(3)

// prefix(), suffix()

let firstTWo = numbersArray2.prefix(2)
let lastThree =  numbersArray2.suffix(3)

// metod removeAll()

var numbersArray3 = [1,2,3,4,5,6,7,8,9,10]

numbersArray3.removeAll { (element) -> Bool in
    element % 2 == 0
}

// metod sorted()

let names = ["ZZZ", "B", "AAA", "CCC", "EEEE"]

let sortedDefault = names.sorted()

let sortedReversed = names.sorted { (first, second) -> Bool in
    first > second
}

let sortedByLettersCount = names.sorted { (first, second) -> Bool in
    first.count < second.count
}

// Home Work
//1.Напишите замыкание, которое производит вывод на консоль сообщения “Привет!”.
//И вызовите его.

let hello = { print("Hello!")}
hello()

//2.Напишите замыкание, которое принимает на вход параметр типа String и выводит его значение на консоль. Вызовите данное замыкание.

let hi = { (message: String) in
    print(message)
}
hi ("HI! Who are you?")

//3.Напишите замыкание, которое принимает на вход два целочисленных параметра и возвращает их сумму. Протестируйте замыкание.

let number = { (a: Int, b: Int) -> Int in
    return a + b
}
number(4,6)

print(number(3,6))

//4.Переделайте функцию ниже в замыкание:

func processNames (dict: [String:Int], name: String) -> Int? {
    var  result: Int? = nil
    for (key, value) in dict {
        if key == name {
            result = value
        }
    }
    return result
}

let dictExample = ["Aiperi":24, "Timur":30, "Masha":25]

processNames(dict: dictExample, name: "Samat")

let processNamesClosure = { (dict: [String:Int], name: String) -> Int? in
    var result: Int? = nil
    for (key,value) in dict {
        if key == name {
            result = value
        }
    }
    return result
}

processNamesClosure(dictExample, "Samat")

//5. Напишите данную функцию в playground :
//a)Что делает функция выше?[
//b)Напишите документацию для этой функции.
//c)Переделайте функцию в замыкание

/// Eta function prinimaet array sortiruet soderjimoe na chetnie i nechetnie chisla
/// parameters:
///     array: massiv iz chelih chisel
/// returns: vozvrashet kortej iz vduh massivov chelih chisel iz chetnih i nechetnih

func processArray (array: [Int]) -> (evenNUmbers: [Int], oddNumbers: [Int]) {
  var evenNumbers = [Int]()
  var oddNumbers = [Int]()
  for element in array {
    switch element {
    case let x where x % 2 == 0:
      evenNumbers.append(x)
    default:
      oddNumbers.append(element)
    }
  }
  return (evenNumbers, oddNumbers)
}
let array = [0,5,7,8,13,14,15,16,22,2,21,25,17]
processArray(array: array)

let processArrayClosure = { (array: [Int]) -> (evenNUmbers: [Int], oddNumbers: [Int]) in
  var evenNumbers = [Int]()
  var oddNumbers = [Int]()
  for element in array {
    switch element {
    case let x where x % 2 == 0:
      evenNumbers.append(x)
    default:
      oddNumbers.append(element)
    }
  }
  return (evenNumbers, oddNumbers)
}
processArrayClosure(array)

//6.Что делает функция ниже:
//a)Переделайте функцию так чтоб она могла принимать замыкание и менять условие отбора цифр.
//b)Создайте функцию по отбору чисел выше 20ти и передайте в функцию которую создали в пункте а)
//c)Создайте замыкание в параметрах созданного вами функции в пункте а) которая будет отбирать числа между 10 и 20.
//d)Создайте замыкание в параметрах созданного вами функции в пункте а) которая будет отбирать числа меньше 5ти. Укоротите ваше замыкание настолько насколько возможно.

func processNumbers(array: [Double]) -> [Int] {
    var returnArray = [Int]()
    
    for number in array {
        if number > 10 {
            returnArray.append(Int(number))
        }
    }
    return returnArray
}
let exampleArray = [9, 8.5, 10.1, 11, 12.6, 3, 3.56, 4.7, 22, 0.5, 35.1, 77.5, 8.9]
processNumbers(array: exampleArray)

// пункт A
func processNumbersClosure(array: [Double], closure: (Double) -> Bool) -> [Int] {
    var returnArray = [Int]()
    
    for number in array {
        if closure(number) {
            returnArray.append(Int(number))
        }
    }
    return returnArray
}

//пункт B
//b)Создайте функцию по отбору чисел выше 20ти и передайте в функцию которую создали в пункте а)

func moreThan20(number: Double) -> Bool {
    return number > 20
}

processNumbersClosure(array: exampleArray, closure: moreThan20(number:))


// пункт C
//c)Создайте замыкание в параметрах созданного вами функции в пункте а) которая будет отбирать числа между 10 и 20.
//returnNames(client: myCustumers, closure: {(age) -> Bool in age >= 40
//})

processNumbersClosure(array: exampleArray, closure: { (number) -> Bool in
    return number > 10 && number < 20
})
//returnNames(client: myCustumers, closure: {age in age >= 40})

let closure4 = processNumbersClosure(array: exampleArray, closure: {number in number > 10 && number < 20})
print(closure4)


//d)Создайте замыкание в параметрах созданного вами функции в пункте а) которая будет отбирать числа меньше 5ти. Укоротите ваше замыкание настолько насколько возможно.

let closure5 = processNumbersClosure(array: exampleArray, closure: {(number) -> Bool  in
    return number < 5
})

let closure6 = processNumbersClosure(array: exampleArray) {$0 < 5}
print(closure6)


//7. Что делает функция ниже:
//a)Переделайте функцию так чтоб она могла принимать замыкание которое принимает элемент (Int) и возвращать его в измененном виде(Int).
//То есть тип замыкания (Int) -> (Int).
//b)Где замыкание с пункта
//а)можно использовать в телефункции? И для чего?
//c)Вызовите функцию с пункта а) и передайте замыкание в параметр которое будет возвращать квадратное число каждого элемента.

/// function prinimaet array chelih chisel and returns  numbers array of every element increased by one

func returnProcessedArray(array: [Int]) -> [Int] {
  var returnArray = [Int]()
  for element in array {
    let newElement = element + 1
    returnArray.append(newElement)
  }
  return returnArray
}
let arrayNums = [0,5,7,8,13,14,15,16,22,2,21,25,17]
returnProcessedArray(array: arrayNums)
//a)Переделайте функцию так чтоб она могла принимать замыкание которое принимает элемент (Int) и возвращать его в измененном виде(Int).
//То есть тип замыкания (Int) -> (Int).

func returnProcessedArrayAndClosure(array: [Int], closure:(Int) -> Int ) -> [Int] {
  var returnArray = [Int]()
  for element in array {
    let newElement = closure(element)
    returnArray.append(newElement)
  }
  return returnArray
}

// b)Где замыкание с пункта а)можно использовать в телефункции? И для чего?

//c)Вызовите функцию с пункта а) и передайте замыкание в параметр которое будет возвращать квадратное число каждого элемента.

let closure7 = returnProcessedArrayAndClosure(array: arrayNums, closure: { element in
    return element * element
})

print(closure7)
