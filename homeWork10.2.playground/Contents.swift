import UIKit

var str = "Hello, playground"

//1.Создайте словарь из имени возрастов, не меньше 6 элементов от 18 до 50 лет.
//Пройдите по каждому элементу словаря методом forEach() и напечатайте в консоле <<“имя” “возраст” years old>>. Используйте замыкание в полном и в самом коротком виде.

var friends = ["Alina":22, "Salamat":18, "Alibek":24, "Timur":30, "Samat":18, "Katya":32, "Masha":39, "Madina":49]

friends.forEach { (name, age) in
    print(" \(name) \(age) years old")
}

friends.forEach { print("\($0), \($1) years old")}

//2.Используя словарь из предыдущего задания, создайте новый словарь с помощью метода filter() который будет содержать персон от 20 до 30 лет. Используйте замыкание в полном и в самом коротком виде.
let friends20And30 = friends.filter { (name: String, age:Int) -> Bool in
    age > 20 && age < 30
}

let friends20And302 = friends.filter{ $1 > 20 && $1 < 30 }



//3.Используя словарь из первого задания. Используйте метод first() для получения имени персоны кому за 30 лет.
//Что вы заметили? Какая разница между методом first и filter? Используйте замыкание в полном и в самом коротком виде.
let firstName = friends.first{ (name: String, age: Int) -> Bool in
    age > 30
}

friends.first{ $1 > 30}

//4.Используя метод map() создайте массив имен со словаря из первой задачи. Также создайте массив возрастов, но массив должен содержать возраст а типа строки. Используйте замыкание в полном и в самом коротком виде.

// Ask short way

let ageArray = friends.map { (name, age) -> String in
    String(age)
}

let nameArray = friends.map { (name, age) -> String in
    String(name)
}



//5.Добавьте два массива из строк из предыдущего примера в один массив. Используйте метод flatMap() чтоб соединить массивы хранящиеся в новом массиве в один целый массив из строк.

let ageName = [ageArray, nameArray]

let flatAgeName = ageName.flatMap { (array) -> [String] in
    array
}


//6.Используйте метод reduce() чтоб получить сумму всех возрастов со словаря из первой задачи.
let total = friends.reduce(0) { (result, element) -> Int in
    result + element.value
}



//7.Используйтеметод reduce(into:) чтобсоздатьмассивименсословаряизпервойзадачи. Такжеиспользуйтетотжеметоддлясозданиямассивацелыхчиселизвозрастов.

let friends2 = ["Alina":22, "Salamat":18, "Alibek":24, "Timur":30, "Samat":18, "Katya":32, "Masha":39, "Madina":49]

let totalNameArrayReduce = friends2.reduce(into: [String]()) { (result, element) in
    result.append(element.key)
}

let totalAgeReduce = friends2.reduce(into: [Int]()) { (result, element) in
    result.append(element.value)
}

    //8.Отсортируйте массив имен спредыдущего задания по алфавитному порядку с конца от Z-A. Также создайте массив имен отсортированных по количеству букв в именах от меньшего к большему.
let sorted = totalNameArrayReduce.sorted{(first, second) -> Bool in
    return second > first
}
let sorted1 = totalNameArrayReduce.sorted(by: >)

let sortedByLettersCount = totalNameArrayReduce.sorted{(first, second) -> Bool in
   return first.count > second.count
}




