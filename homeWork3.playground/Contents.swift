import UIKit

var str = "Hello, Aiperi"
//1.Что не так со следующим кодом? Исправте ошибки если они есть.
var name = "Michael"
name += " Jackson"

var name2 = "Maksatova"
name2 += " Esenbay"

 var name3 = "Bakyt"
name3 += "Esenbay"

print (name, name2, name3)

//2.Используя интерполяцию, создайте строковую константу с именем my Details, которая использует константу fullName с вашим именем. Чтоб значение myDetails выглядело примерно так: “Hello, my name is Aslan Arapbaev”
let fullName = "Aiperi Maksatova"
let myDetails = "Hello, my name is \(fullName)"
print (myDetails)

//let fullName = "Aiperi Maksatova"
//let myDetails = "hello, my name is \(fullName)"
//
//let fullName2 = "Emily Esenbay"
//let myDetails2 = "Hello, my name is \(fullName2)"

//3.Создайте строковую константу с именем firstName иинициализируйте ее своим именем. Также создайте строковую константу с именем lastName иинициализируйте ее своей фамилией. Затем создайте строковую константу с именем fullName, добавив вместе константы firstName и lastName через пробел, используя конкатенацию.
let firstName = "Aiperi"
let lastName = "Maksatova"
let fullNameConcatenaion = firstName + " " + lastName
print (fullNameConcatenaion)

//let firstName = "Aiperi"
//let lastName = "Maksatova"
//let fullNameConcatenayion = firstName + " " + lastName
//
//let firstName2 = "Emily"
//let lastName2 = "Esenbay"
//let fullName2firstName2 = firstName2 + " " + lastName2


//4.Объявите константу с типом кортеж, который содержит три значения Int, за которыми следует Double. Используйте это, чтобы создать вымышленную дату (месяц, день, год), за которой следует средняя температура для этой даты.
let aiperi = (month: 10, day: 16, year: 1995, time: 6,30)
let month = aiperi.month
let day = aiperi.day
let year = aiperi.year
let time = aiperi.time
print(month,day,year)

//let emily = (month: 3, day: 13, year: 2019, temperature: 36.6)
//let month = emily.month
//let day = emily.day
//let year = emily.year
//let temperature = emily.temperature

//•Измените кортеж, чтобы назвать составляющие компоненты. Дайте имимена, связанные с данными, которые они содержат: месяц(month), день(day), год(year) исредняя температура(averageTemperature).
//•Создайте константы day, month, year и averageTemperature  и задайте им значения получив доступ к каждой кортежа вашей вымышленной даты
let password = "1234"
password == "1234" || password == "5678"


let father = ( month2: 09, day2: 22, year2: 1984, time2: 6.30)
let month2 = father.month2
let day2 = father.day2
let year2 = father.year2
let time2 = father.time2

