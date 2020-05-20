import UIKit

// LESSON 12

struct Car {
    let color: String
    let year: Int
    var model: String
    var price: Double
}


// Хранимые свойствa - stored properties


struct Contacts {
    var name: String? = nil
    var surname: String? = nil
    var phone: Int? = nil
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
    
    init(phone: Int?) {
        self.phone = phone
    }
    
    init(name: String, surname: String, phone: Int) {
        self.name = name
        self.surname = surname
        self.phone = phone
    }
    
    func getFullName() -> String {
        return (name ?? "") + " " + (surname ?? "")
    }
    
    mutating func changePhone(phone: Int?) {
        self.phone = phone
    }
}


var cont1 = Contacts(name: "Aslan", surname: "Arapbaev", phone: 998998989)
cont1.phone
cont1.changePhone(phone: 7667676676)
cont1.phone


//var cont = Contacts(fullName: "Aslan", emailAddress: "aslan@yurtah.com")
//cont.emailAddress = "ruslan@yurtah.com"

// Вычисляемые ﻿свойства (Computed properties)

struct Monitor {
    var height: Double
    var width: Double
    
    // 3 svoistvo Вычисляемые ﻿свойства
    
    var diagonal: Int {
        let result = (height * height + width * width).squareRoot().rounded()
        return Int(result)
    }
}
var  monitorLG = Monitor(height: 53.99, width: 95.88)
let size = monitorLG.diagonal  // no need to use ()

let monitorSamsung = Monitor(height: 75, width: 98.9)
let sizeSamsung = monitorSamsung.diagonal

var monitorApple = Monitor(height: 13.56, width: 45.98)
let sizeApple = monitorApple.diagonal

let monitorIphoneProMax = Monitor(height: 77.8, width: 158.0)
let sizeIphoneProMax = monitorIphoneProMax.diagonal


// contact with computed property fullname
struct Contact2 {
    var name: String // stored
    var surname: String // stored
    var fullName: String {                 // computed
        return name + " " + surname
    }
}

var contact3 = Contact2(name: "Aslan", surname: "Arapbaev")
contact3.name = "Ruslan"
let fullName = contact3.fullName
//contact3.fullName = "Ruslan"


// Getter and Setter

struct TV {
    var color: String = "Black"
    var height: Double
    var width: Double
    var diagonal: Int {    // value diagonal mi mojem uznat' iz formuly vnutri get
        get {
            let result = (height * height + width * width).squareRoot().rounded()
            return Int(result)
        }

       set (newDiagonal) {                  // new value diagonali uje imeetsya i srobativaet formula                           //vnutri set kotoraya menyaet znachenie height and width
        
        
            height = Double(newDiagonal) * 2 / 3
            width = height * 2 / 3
        }
    }
}
var tv = TV(height: 5, width: 8)

tv.height
tv.width
tv.diagonal   // rabotaet get tak kak hotim uznat' znachenie diagonali

tv.diagonal = 2 // pomenyali diagonal'  i srabativaet set
tv.height          // set
tv.width           // set


tv.diagonal   // get





struct Container {
    var width: Double
    var height: Double
    var length: Double
    var volume: Double {
        get {
            let resultVolume = (width * height * length)
            return (resultVolume)
    }
        set {
            width = Double(newValue) * 4 / 3
            height = width * 4 / 3
            length = width * height / 2
            
        }
    
    }
}

var c = Container(width: 1, height: 2, length: 3)
    c.volume
    
c.volume = 8
c.height
c.length
c.width

c.volume



// square and circle structs

struct Square {
    var side: Double
    var diagonal: Double {
        get {
            return sqrt(side*side + side*side)
        }
        set(newDiagonal) {
            let sideRatio = 1.0
            let diagonalRatio = sqrt(2)

            side = newDiagonal * sideRatio / diagonalRatio
        }
    }
}

var square1 = Square(side: 5)
square1.diagonal
square1.side

square1.diagonal = 14.14
square1.side

//
//struct Circle {
//    var radius: Double
//    var perimeter: Double {
//        get {
//            return (2 * Double.pi * radius)
//        }
//
//    }
//}


// Property Observers

struct Contact {
    let fullName: String
    var emailAddress: String {
        willSet(newAddress) {
            print("WillSET: Вместо почты \(emailAddress) устанавливается значение \(newAddress)")
        }
        didSet(oldAddress) {
            print("DIDSET: Значение \(oldAddress) было заменено на \(emailAddress)")
        }
    }
}


var contact2 = Contact(fullName: "Aslan Arapbaev", emailAddress: "aslan@yurtah.com")
contact2.emailAddress = "ruslan@yurtah.com"

struct Number {
    let fullname: String
    var phone: Int{
        willSet(realNumber) {
            print("My number \(phone) and my number will \(realNumber)")
        }
        didSet(newNumber) {
            print("Value \(newNumber) was changed to \(phone)")
        }
    }
}

var number2 = Number(fullname: "Aiperi Maksatova", phone: 7643976)
number2.phone = 12345677



// Type property

struct Level {
    static var highestLevel = 1
    let id: Int
    var boss: String
    var unlocked: Bool {
        didSet {
            if unlocked == true && id > Self.highestLevel {
                Level.highestLevel = id
            }
        }
    }
}


var level1 = Level(id: 1, boss: "Тор", unlocked: true)
var level2 = Level(id: 2, boss: "Железный Человек", unlocked: false)
var level3 = Level(id: 3, boss: "Халк", unlocked: false)
var level4 = Level(id: 4, boss: "Танос", unlocked: false)

level2.unlocked = true
level3.unlocked = true


Level.highestLevel  // 3

class Exechange  {
    var cash:  Double
    var rate: Double
    
    static var usdRate: Double = 69
    
    init(cash: Double, rate:Double){
        self.cash = cash
        self.rate = rate
    }
    func convert() -> Double {
        return cash * Exechange.usdRate
    }
}

var som = Exechange(cash: 1000, rate: 0.1)
var capitalInKG = som.convert()
Exechange.usdRate = 65
capitalInKG = som.convert()




class Greeting {
    static let english = "Hello"
    static let french = "Salut"
    static let kg = "Salam"
}
print(Greeting.english)
print(Greeting.french)
print(Greeting.kg)
Greeting.english

// Example ограничитель значения

struct LightBulb {
    static let maxCurrent = { return 40 }()
    var current = 0 {
        didSet(oldCurrent) {
            if current > LightBulb.maxCurrent {
                print("""
                    Current is too high,
                    falling back to previous setting.
                    """)
                current = oldCurrent
            }
        }
    }
}

var bulb1 = LightBulb(current: 35)
bulb1.current = 50
LightBulb.maxCurrent



struct Building {
    static var highestFloor: Int = 10
    var floor: Int = 1 {
        didSet {
            if floor > Self.highestFloor {
                print("Error")
                floor = Self.highestFloor
            }
        }
    }
}

var building1 = Building()

building1.floor = 12
building1.floor
Building.highestFloor
//building1.highestFloor

// Lazy properties

struct Circle {
    lazy var pi = {
        ((4.0 * atan(1.0 / 5.0)) - atan(1.0 / 239.0)) * 4.0
    }()
    var radius = 0.0
    var circumference: Double {
        mutating get {
            pi * radius * 2
        }
    }
    
    init(radius: Double) {
        self.radius = radius
    }
}

var circle1 = Circle(radius: 10) // pi has no value

circle1.circumference            // pi has a value


// example


struct Teacher {
    var name: String
    var surname: String
    lazy var fullName: String = {
         self.name + " " + self.surname
    }()
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
}

var teacherMath = Teacher(name: "Timur", surname: "Mone")
teacherMath.fullName

teacherMath.name = "Aslan"
teacherMath.surname = "Arapbaev"

teacherMath.fullName // still unchanged

teacherMath.name
teacherMath.surname
teacherMath.fullName


