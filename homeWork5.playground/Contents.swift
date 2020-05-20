import UIKit

var str = "Hello, Aiperi"
print ("Good Morning! Aiperi")

//1.Создайте константу с именем myAge иинициализируйте ее в соответствии с вашим возрастом. Напишите выражение if, чтобы распечатать слово “Ребенок”, если ваш возраст от 3 до 12 лет, и“Неребенок”, если ваш возраст не от 3 до 12 лет.

let myAge = 24
if myAge >= 3 && myAge <= 12  {
    print ("child")
} else {
    print ("not child")
}

//let myAge = 24
//if myAge  >= 3 && myAge <= 12 {
//    print ("child")
//} else {
//    print ("notChild")
//}

//2.Создайте константу с именем answer и используйте Тернарное условие (Ternary operator), чтобы установить его равным результату, который вы распечатываете для тех же случаев в приведенном выше упражнении. Затем распечатайте ответ.
let answer = myAge >= 3 && myAge <= 12 ? "child" : "not child"
print (answer)

//let answer =  myAge >= 3 && myAge <= 12 ? "Ребенок" : "Не ребенок"
//print (answer)


//3.Создайте константу с именем range и установите ее равной диапазону, начинаяс 1 и заканчивая 10 включительно. Напишите цикл for, который перебирает этот диапазон и печатает квадрат каждого числа в консоли.
let range = 1...10
for i in range {
let square = i * i
    print ("\(square)")
}
//let range = 1...10
//for i in range {
//    let square = i * i
//    print("\(square)")
//}


    //4.Этот код пропускает итерацию если если значение row четное число.
//Перепишите этот код используя оператор where чтобы цикл пропускал четные числа, не используя оператор continue.
var sum = 0
for row in 0..<8 where row % 2 == 1 {
    for colum in 0..<8 {sum += row * colum
        
    }
}
//var sum = 0
//for row in 0..<8 where row % 2 == 1 {
//    for column in 0..<8 {
//        sum += row * column
//
//    }
//
//}
// print (sum)



//5. Напишите инструкцию switch, которая принимает возраст как целое число и печатает этап жизни, связанный с этим возрастом. Вы можете составить жизненные этапы или использовать мою классификацию следующим образом: 0-2 года, младенец; 3-12 лет, ребенок; 13-19 лет, подросток; 20-39, взрослый; 40-60, среднего возраста; 61+, пожилой.
let MyAge = 24
switch MyAge {
case 0...2:
    print("baby")
case 3...12:
    print("child")
case 13...19:
    print("teenagar")
case 20...39:
    print("adult")
case 40...60:
    print ("average age")
default:
    print("not true age")
}

//let womanAge = 24
//switch womanAge {
//case 0...2:
//    print("baby")
//case 3...12:
//    print("child")
//case 13...19:
//    print("teenager")
//case 20...39:
//    print("adult")
//case 40...60:
//    print("average age")
//default:
//    print ("not true age")
//}
//6. Напишите инструктор switch, который принимает кортеж, содержащий строку и целое число. Строка - это имя, а целое число - это возраст. Используйте те же случаи, которые вы использовали в предыдущем упражнении, и позвольте синтаксису распечатать имя, за которым следует этап жизни. Например, для моего возраста оно напечаталобы «Аслан взрослый».
let tuple = ("Aiperi", 24)
switch tuple {
case (let name, 0...2):
    print("\(name) baby")
case (let name, 3...12):
    print("\(name) child")
case (let name, 13...19):
    print("\(name) teenagar")
case (let name, 20...39):
    print("\(name) adult")
case (let name, 40...60):
    print ("\(name)average age")
default:
    print("not true age")
}

//let tuple = ("Aiperi", 24)
//switch tuple {
//case (let name, 0...2):
//    print("\(name) baby")
//case (let name, 3...12):
//    print ("\(name) child")
//case (let name, 13...19):
//    print("\(name) teenager")
//case (let name, 20...39):
//    print("\(name) adult")
//case (let name, 40...60):
//    print("\(name) average age")
//default:
//    print("not true age")
//}
