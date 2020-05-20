import UIKit

var str = "Hello, playground"

//1.Реализуйте структуру Macbook, описывающую компьютер. Структура должна обладать следующими характеристиками:
//-свойство, описывающее год, цвет, модель и стоимость компьютера
//-метод, возвращающий информацию о компьютере

struct Macbook {

    var year: Int
    var color: String
    var model: String
    var price: Double

    func getInfo ()  {
        print( "I have MacBook Pro. My Macbook Info \(year), \(color), \(model), \(price). ")
    }
}

var macBookPro = Macbook(year: 2019, color: "Grey", model: "Pro", price: 2499.9)

macBookPro.getInfo()
macBookPro.color
macBookPro.model
macBookPro.price
macBookPro.year

//2.Реализуйте структуру Contact, описывающую контактную информацию персоны.
//Структура должна обладать следующими характеристиками:
//-свойство, описывающее имя, фамилию, номер телефона и место работы контакта
//-метод, возвращающий полное имя контакта и метод для изменения номера телефона
//-добавьте кастомные инициализаторы с возможностью создания контакта только с помощью имени и фамилии. Также создания только с помощью номера телефона.

struct Contact {
    var name: String
    var lastName: String
    var phoneNumber: Int
    var work: String
    
    
    func new () {
        print("My name is \(self.name). My last name \(self.lastName) , \(self.phoneNumber), \(self.work)")
    }


    
}

let myInfo = Contact(name: "Alina", lastName: "T", phoneNumber: 13145, work: "dev")
let aya = Contact(name: "Aya", lastName: "Ivanova", phoneNumber: 64576858, work: "ios")
myInfo.new()
aya.new()






struct Contact2 {
    
    var name: String? = nil
    var lastName: String? = nil
    var phoneNumber: Int? = nil
    var work: String? = nil
    
    func fullName() -> String {
        return "\(name ?? "no") \(lastName ?? "name")"
    }
    
    init(name: String?, lastName: String?) {
        self.name = name
        self.lastName = lastName
    }
    
    init(phoneNumber: Int?) {
        self.phoneNumber = phoneNumber
    }
}

var myInfo2 = Contact2(name: "Timur", lastName: "Mone")

myInfo2.fullName()

let contact3 = Contact2(phoneNumber: 68644)

contact3.fullName()




var myContact2 = Contact2(name: "Aiperi", lastName: "Maksatova")

var myPhoneNumber2 = Contact2(phoneNumber: 9293177724)

myInfo2.lastName
myInfo2.name
myPhoneNumber2.phoneNumber = 12314
myPhoneNumber2.phoneNumber



//3.Реализуйте структуру Point, описывающую точку на плоскости (2 оси) Структура должна обладать следующими характеристиками: -свойство, описывающее координаты точки на плоскости (x,y)-метод, принимающую другую точку в качестве входного аргумента и возвращающий расстояние между текущей точкой и переданной
//-Проверьте работоспособность вашей структуры создайте две точки (x:3, y:0) и (x:0,y:4) вычислите расстояние между ними ответ должен быть 5.
//(Подсказка: для подсчета расстояния между двумя точками можете использовать теорему Пифагора  a² + b² = c²) в Свифт квадратный //корень можно вычислить функцией sqrt()

struct Point {
    var x: Double
    var y: Double
    
    func distance(point: Point) -> Double {
        let differenceX = self.x - point.x
        let differenceY = self.y - point.y
        return sqrt((differenceX * differenceX) + (differenceY * differenceY))
    }
}

var point1 = Point(x: 3, y: 0)
var point2 = Point(x: 0, y: 4)

let distance = point1.distance(point: point2)  // 103





