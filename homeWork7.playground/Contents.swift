import UIKit

var str = "Hello, playground"
//1.Создайте опциональную строку с именем myFavoriteSong.
//Если у вас есть любимая песня назначьте значение для этой строки.
//Если у вас любимых песен больше одного или его нет назначьте опционал как nil.


var myFavoriteSong: String?
    myFavoriteSong = "you rise me up"



//2.Используйте предыдущий пример, с помощью опционального связывания проверьте содержит ли оно значение. Если не содержит напечатайте на отладке “У меня нет любимой песни.”, если есть то “Моя любимая песня .....”.

if let mySong = myFavoriteSong {
    print("Моя любимая песня \(mySong)")
} else {
    print("У меня нет любимой песни.")
}




//3.Используйте предыдущий пример, если myFavoriteSong содержит значение поменяйте на nil, а если не содержит значения то назначьте любую песню.
//Проверьте, меняется ли результат опционального связывания.
myFavoriteSong = nil

if let mySong = myFavoriteSong {
    print("Моя любимая песня \(mySong)")
} else {
    print("У меня нет любимой песни.")
}


//4.Создайте функцию с параметром count и типом опционального целого числа.
//В теле функции проверьте на наличие значения внутри опционала с помощью опционального связывания. Еслu значение есть то напечатайте число в отладке если его нет напечатайте что значение отсутсвует.


func name (count: Int?) {
    if let verify = count {
        print (verify)
    } else {
        print ("Значение отсутствует")
    }
}

name (count: nil)




//5.Создайте предыдущий пример с помощью инструктора Guard.

func swift (count: Int?) {
    guard let number = count else {
        print ("Значение отсутствует")
        return
    }
    print("\(number)")
}
swift(count: 55)

//6.Создaйте опционал futurePresident типа String.
//И назначтье значение nil.
//Создайте новую константу под именем currentPresident и используя оператор объединения по nil (??) назначьте значение futurePresident и значение по умолчанию ДональдТрамп.
var futurePresident: String? = nil
let currentPresident = futurePresident ?? "Donald Trump"
print("president  usa \(currentPresident)")
