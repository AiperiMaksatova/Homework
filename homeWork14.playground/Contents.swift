import UIKit

var str = "Hello, playground"
//1.Создайте класс Furniture (мебель) со свойствами цвета и материала.

class Furniture {
    var color: String
    var material: String
    
    init(color: String, material: String) {
        self.color = color
        self.material = material
    }
}


//2.Создайте класс Table унаследовав свойства с класса Furniture. Добавьте свойство shape со значением по умолчанию “square”. Создайте экземпляр класса и получите все его свойства.

class Table: Furniture {
    var shape: String = "square"
}

var example = Table(color: "Blue", material: "plastic")
example.shape
example.color
example.material




//3.Создайте класс Bookshelf унаследовав свойства скласса Furniture. Добавьте свойство shelfRows со значением по умолчанию 5. Создайте экземпляр класса и получите все его свойства.

class Bookshelf: Furniture {
    var shelfRows: Int = 5
}

var example2 = Bookshelf(color: "black", material: "wood")
example2.shelfRows
example2.color
example2.material




//4.Создайте класс Desk унаследовав свойства с класса Table. Добавьте свойство height со значением по умолчанию 0.8. Создайте экземпляр класса и получите все его свойства.

class Desk: Table {
    var height: Double = 0.8
}

var example3 = Desk(color: "white", material: "iron")
example3.height
example3.color
example3.material



//5.Создайте функцию которая принимает параметр класса Furniture и печатает в отладке цвет и материал мебели. Вызовите эту функцию и передайте ей все экземпляры созданные в предыдущих примерах.

func getInfo(sofa: Furniture) {
    print(sofa.color + " " + sofa.material)
}

getInfo(sofa: example)
getInfo(sofa: example2)
getInfo(sofa: example3)


//6.Создайте один экземпляр класса Furniture и один экземпляр класса Desk.
//var furniture1 = Furniture...
//var desk1 = Desk...
//Назначьте значение второй переменной для значения первойпеременной. -> furniture1 = desk1
//Попробуйте получить свойство shape или height сэкземпляра furniture1.
//Если не получается, попробуйте использовать оператор as.

var furniture1 = Furniture(color: "green", material: "copper")
var desk1 = Desk(color: "orange", material: "terraton")
furniture1 = desk1
(furniture1 as! Desk).height
(furniture1 as! Desk).shape
(furniture1 as? Bookshelf)?.shelfRows


