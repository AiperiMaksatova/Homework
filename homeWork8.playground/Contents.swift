import UIKit

var str = "Hello, playground"
//1.Создайтепеременнуюмассивсименем myFriends иинициализируйтеегопрописавкакминимум 5 именвашихдрузей.
var myFriends: [String] = ["Janna", "Jika", "Ayana", "Alya", "Aliya"]



//2.Создайтеконстантумассивсименем fruits иинициализируйтеегоназначьтекакминимум 5 различныхфруктов.
let fruits = ["apple", "orange", "banana", "pineapple", "grape"]



//3.Создайтепеременнуюмассивсименем evenNumbers иинициализируйтеегопрописавкакминимум 8 четныхчисел.
var evenNumbers: [Int] = [22, 4, 6, 8 ,10, 12, 14, 16]



//4.Создайтепеременнуюмассивсименем personInfoArray иинициализируйтеегоназначивкакминимум 3 кортежакоторыйдолженсодержатьимяивозраст.
var personInfoArray = [("Jika", 19), ("Alya", 20), ("Janna", 26)]

//5.Создайтеконстанту personInfo ииспользуямассивсупражнение 4 назначьтезначениевторогоэлементамассива.
let personInfo = personInfoArray[2]


//6.Создайтемассивсименамитрехгородов. Затемдобавьтекнемугород<<Париж>> сметодом  append(). Затемдобавьте <<Рим>>  вторымпоочередностивмассивеспомощьюметода insert(_at:).
var countries = ["New York", "Miami", "Chicago"]
countries.append("French")
countries.insert("Roma", at: 1)


//7.Используяпредыдущееупражнениеуберитепоследнийэлементсмассива. Азатемудалитепервыйэлементмассива.
countries.removeLast()
countries.remove(at: 0)


//8.СоздайтеновыймассивсгородамиВенеция, Барселона, Берлин. Создайтеещеодинновыймассивсименем bestCities объединивновыймассивистарыймассивгородовсупражненияномер 6.
var city = ["Venec", "Barselona", "Berlin"]
var bestCities = city + countries
print(bestCities)

//9.ИзменитегородБарселонанаЛондонвсозданноммассиве bestCities спредыдущегоупражнения.
bestCities[1] = "London"
bestCities

bestCities.removeLast()

//10.Создайте цикл for-in который напечатает всеназваниягородовспредыдущегоупражнения.

for plov in bestCities {
    print(plov)
}

//11.Создайтецикл for-in которыйнапечатаетвсеназваниягородовсупражнения 9 новместеснумерацией. (Пример - 1. Бишкек  2. Стамбул)
//
//for (index, numberCities) in bestCities.enumerated() {
//    print("\(index + 1) - \(numberCities)")
//}


for ( index, numberCities ) in bestCities.enumerated() {
    print("\(index + 1) - \(numberCities)")
}

//12.Напечатайтенаотладке <<Какойжеямолодец!>>

print("Kakoi je ya molodec!")
