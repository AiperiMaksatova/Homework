import UIKit

var str = "Hello, playground"
//Заданиякуроку No4
//Мини-упражнения:
//1.Выведите на консоль букву W, составленную из символов «звездочка» (*),
//расположенных в три строки .
//let w = """
//*  *  *
// ** **
//  * *
//"""
//print (w)
// let b = """
//****
//*   *
//****
//*   *
//****
//"""
//print (b)
let a = """
  *
 ***
*   *
"""
print(a)


//2. - Объявите переменную и запишите в нее текущую дату .
// - Объявите переменную и запишите внеe название текущего месяца .
// - Объявите переменную и запишите в нее текущий год .
// - Выведите на консоль текущую дату в формате «2020 Апрель 01», используя данные, записанные в объявленные ранее переменные .
var today = "09"
var thisMonth = "April"
var thisYear = "2020"
print("\(thisYear) \(thisMonth) \(today)")

//1 variant
//var currentDay = "02"
//var currentMonth = "April"
//var currentYear = "2020"
//
//print ( "\(currentDay) \(currentMonth) \(currentYear)")
//// 2 variant
//var day = "03"
//var month = "April"
//var year = "2020"
//print ( "\(year) \(month) \(day)")



// 3.Создайте кортеж с тремя параметрами: ваш любимый фильм, ваше любимое число и ваше любимое блюдо .
// Все элементы кортежа должны быть именованы .
var my = (movie: "Turkish Tv Show", number: "7", food: "cakes")
var movie = my.movie
var number = my.number
var food = my.food

print ("My favorite, \(movie) \(number) \(food)")

//var  myInfo = (movie: "Lion king", number: "7",food: "Ceazar")

// 4.Объявите две целочисленные однотипные переменные, при этом тип данных первой должен быть задан не явно, а второй — явно.
// Обеим переменным должны быть присвоены значения.
var number3 = 22
var number1: Int = 22

//var number1 = 20
//var number2: Int = 4



// 5. - Создайте псевдоним типа String с именем Text.
// - Объявите три константы типа Text. Значения двух констант должны состоять только из цифр, третьей — из цифри букв.
typealias Text = String
let Text1: Text = "55"
let Text2: Text = "66"
let Text3: Text = "date16"

//typealias Text = String
//
//let Text1: Text = "1234"
//let Text2: Text = "1622"
//let Text3: Text = "emily13"


// 6.  Создайте константу с именем myAge иинициализируйте ее в соответствии с вашим возрастом. Напишите выражение if, чтобы распечатать << Вы тинейджер>>, если ваш возраст от 13 до 19 лет, и<< Вынетинейджер>>, если ваш возраст не от 13 до 19 лет.
let myAge = 24
if myAge >= 3 && myAge < 19 {
    print ("Teenager")
} else {
    print ("NotTeenager")
}

//let myAge = 24
//if myAge >= 13 && myAge < 19 {
//    print ("Teenager")
//} else {
//print ("NotTeenager")
//}
//
//let Bakyt = 25
//if Bakyt >= 13 && Bakyt < 19 {
//print ("Teenager")
//} else {
//print ("NotTeenager")
//}

// 7. Создайте переменную с именем counter и установите ее равной 0.
// Создайте цикл while с условием counter < 10, который выводит на консоль значение counter при каждой новой итерации, а затем увеличивает counter на 1.
var counter1 = 0
while counter1 < 10 {
    print (counter1)
    counter1 += 1
}


//var counter = 0
//while counter < 10  {
//    print (counter)
//    counter += 1
//}


//8. Создайте переменную с именем counter и установите ее равной 0.
// Создайте другую переменную с именем roll и установите ее равной 0.
// Создайте цикл repeat-while.
//Внутри цикла установите значение roll равное
//Int.random (in: 0 ... 5), что означает выбор случайного числа от 0 до 5.
// Затем увеличьте counter на 1.
//При каждой итерации выводите в консолепредложение
//<< Номер итерации counter и значение случайного числа roll>>,
//где значения counter и roll интерполированы.
//Установите условие цикла так, чтобы цикл заканчивался, когда roll не будет равняться 0.
var counter2 = 0
var roll = 0
repeat {
    roll = Int.random (in: 0 ... 5)
    counter2 += 1
    print("This number \(counter2) and another number \(roll)")
} while roll != 0


//var counter = 0
//var roll = 0
//repeat {
//    roll = Int.random(in: 0...5)
//    counter += 1
//    print ("Номер итерации \(counter) и значение случайного числа \(roll) ")
//} while roll != 0




// 9. Что не так со следующим кодом? Если есть ошибки, исправьте.
let firstName = "Michael"
var lastName = ""
if firstName=="Michael" {
    lastName = "Jackson"
    
} else if firstName=="Sam" {
     lastName = "Smith"
    }
let fullName = firstName+" "+lastName

//10. Вы знаете, что из-за високосных лет «февраль» имеет 29 дней,
//но наверное не знаете какими правилами руководствуются создатели календарей приподсчете високосных лет.
//Вот эти правила: -когда год кратен 4 (делится на 4 без остатка),
//но некратен 100 ( делится на 100 с остатком) февраль имеет 29 дней
// -Или в феврале также 29 дней, когда год кратен 400 (делится на 400 без остатка).
//Используя все эти условия создайте цикл который который напечатает в консоли все годы начиная 0 до 2021 года которые имеют 29 дней в феврале.
//(Подсказка: используйте % для вычисления кратности числа)
var yearCount = 0
while yearCount < 2021 {
    if yearCount % 4 == 0 && yearCount % 100 != 0 || yearCount % 400 == 0 {
        print ("\(yearCount) Year has 29 days in February")
    }
    yearCount += 1
}


//var yearCount = 0
//while yearCount < 2030 {
//    if yearCount % 4 == 0 && yearCount % 100 != 0 || yearCount % 400 == 0 { print ("\(yearCount) Year has 29 days in February")
//    }
//    yearCount += 1
//}
