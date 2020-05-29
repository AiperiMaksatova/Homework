import UIKit

var str = "Hello, playground"
// new
//1.Создайте протокол Студент со свойствами количества уроков, года поступления и года выпуска. Все свойства доступные и изменяемые. Также добавьте методы сдать экзамен и пригласить на выпускной, метод пригласить на выпускной принимает массив строки возвращает строку.

protocol Student {
    var lessons: Int { get set }
    var yearEnroll: Int { get set }
    var yearGraduation: Int { get }
    
    func passExame ()
    
    func inviteInGraduation (people: [String]) -> String
}




//protocol Student {
//    var lessons: Int { get set }
//    var yearEnroll: Int { get set }
//    var yearGraduation: Int { get }
//
//    func passExame()
//
//    func inviteInGraduation (people: [String]) -> String
//}


//2.Создайте протокол Человек со свойствами имени, возраста и пола. Для пола создайте и используйте перечисление. Все свойства должны быть как минимум доступными.

protocol People {
    var name: String { get }
    var age: Int { get }
    var gender: Gender { get }
}

enum Gender {
    case female
    case male
}



//protocol People {
//    var name: String { get }
//    var age: Int { get }
//    var gender: Gender { get }
//}
//
//enum Gender {
//    case female
//    case male
//}



//3.Создайте класс студент с наследованием протоколов Человек и Студент. Реализуйте все требования протоколов. Свойство года выпуска должно быть вычисляемым (время учебы длиться 4 года) с возможностью менять год поступления. Метод пригласить на выпускной должен принимать массив имени возвращать список приглашенных имени благодарности за участие в типе строки, например: <<Аслан, Тимур, Саламат, Айпери спасибо что пришли на мой выпускной.>>. Метод сдать экзамен должен просто напечатать <<Урааа!>>. Создайте экземпляр класса и протестируйте его.

class Studs: People, Student {
    var name: String
    var age: Int
    var gender: Gender
    
    var lessons: Int
    var yearEnroll: Int
    var yearGraduation: Int {
        get {
            return yearEnroll + 4
        }
    }
    
    func passExame() {
        print("Uraaaaa!")
    }
    
    func inviteInGraduation(people: [String]) -> String {
        return "\(people.joined(separator: ", ")) thanks for coming my Graduation!"
    }
    
    init(name: String, age: Int, gender: Gender, lessons: Int, yearEnroll: Int, yearGraduation: Int) {
        self.name = name
        self.age = age
        self.gender = gender
        self.lessons = lessons
        self.yearEnroll = yearEnroll
    }
}

var person1 = Studs(name: "Aiperi", age: 24, gender: .female, lessons: 9, yearEnroll: 2013, yearGraduation: 2017)
person1.yearEnroll = 2015
person1.yearGraduation
person1.inviteInGraduation(people: ["Aslan, Timur, Samat, Alibek"])






//class Studs: People, Student {
//    var name: String
//    var age: Int
//    var gender: Gender
//
//    var lessons: Int
//    var yearEnroll: Int
//    var yearGraduation: Int {
//        get {
//            return yearEnroll + 4
//        }
//    }
//
//
//    func passExame() {
//        print("Yaaaaay!")
//    }
//
//    func inviteInGraduation(people: [String]) -> String {
//        return "\(people.joined(separator: ", ")) thanks for invite my graduation"
//    }
    
//    init(name: String, age: Int, gender: Gender, lessons: Int, yearEnroll: Int, yearGraduation: Int) {
//        self.name = name
//        self.age = age
//        self.gender = gender
//        self.lessons = lessons
//        self.yearEnroll = yearEnroll
//    }
//}
//
//var person1 = Studs(name: "Alibek", age: 24, gender: .male, lessons: 7, yearEnroll: 1992, yearGraduation: 1996)
//person1.yearEnroll = 2010
//person1.yearGraduation
//person1.inviteInGraduation(people: ["Aslan, Timur, Salamat, Aiperi"])
//




//4.Создайте расширение для класса студента и добавьте протокол CustomStringConvertible, чтобы при печатании экземпляра студента    мы видели имя и год поступления студента. Протестируйте напечатав экземпляр студента в отладке.
//5.Добавьте протокол Equatable классу студента спомощью расширения, чтобы присравнении (==) двух экземпляров если имена, возраст и год поступления равны то мы должны получить true. Создайте пару экземпляров студента и сравните равны они или нет.


extension Studs: CustomStringConvertible, Equatable {
    static func == (l: Studs, r: Studs) -> Bool {
        return l.name == r.name && l.age == r.age &&
        l.yearEnroll == r.yearEnroll
    }
    var description: String {
        return "\(name) - \(yearEnroll)"
    }
}

var person2 = Studs(name: "Bakyt", age: 35, gender: .male, lessons: 6, yearEnroll: 1992, yearGraduation: 1997)

var person3 = Studs(name: "Samat", age: 18, gender: .male, lessons: 10, yearEnroll: 2021, yearGraduation: 2025)

person2 == person3



