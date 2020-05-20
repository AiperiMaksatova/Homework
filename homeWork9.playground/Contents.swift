 import UIKit

var str = "Hello, playground"


//1.Создайте переменную словарь с именем myContacts.
//Инициализируйте словарь использовав ключ для имени контакта а значение для номера телефона. Пропишите данные трех своих знакомых.

var myContacts: [String : Int] = ["Janna" : 6468217107, "Sholpan" : 6468864533, "Jibek" : 9178603020]
print(myContacts)

//2.Создайте словарь с именем companies и задайте эти данные в виде ключ-значение: Apple-Steve, Google-Larry, Amazon-Jeff, Facebook-Mark.

var companies: [String : String] = ["Apple" : "Steve", "Google" : "Larry", "Amazon" : "Jeff", "Facebook" : "Mark" ]
print(companies)



//3.Создайте словарь с данными: China-Beijing, India-Mumbai, Turkey-Ankara.

var country = ["China" : "Beijing", "India" : "Mumbai", "Turkey" : "Ankara"]

print(country)

//4.Добавьте к предыдущему упражнению Kyrgyzstan-Bishkek.


country["Kyrgystan"] = "Bishkek"
 print(country)


//5.Измените из значение India-Mumbai на India-New Delhi.

country["India"] = "New Delhi"
print(country)

country.updateValue("Frunze", forKey: "Kyrgystan")
print(country)

//6.Используя опциональное связывание вытащите из словаря (упражнения3) значение Beijing ииспользуйте в предложении.

if  let valueForCountry = country ["China"] {
    print("blalalalla \(valueForCountry)" )
} else {
    print("I don't have this value")
}





//7.Используйте цикл for-in и напечатайте только названия стран из упражнения 3 используя их в предложении.
//var country = ["China" : "Beijing", "India" : "Mumbai", "Turkey" : "Ankara"]

for nameOfCountry in country.keys {
    print("In my 3 exercise i  have this countries \(nameOfCountry)")
}

//8.Используйте цикл for-in и напечатайте названия столиц и названия стран вместе из упражнения 3 используя их впредложении.

for capital in country.values {
    print("I know all this capital Cities \(capital)")
}




//9.Создайте два множества. Одна из них будет хранить имена тех кто ходит на плавание это - Аслан, Нургазы, Тимур, Нурик, Асоль, Астра, Алина

//Второй должен хранить имена тех кто ходит на каратэ это - Тилек, Астра, Тимур, Алибек, Бакыт, Саламат, Алина, Анна.

let swimming: Set<String> = ["Аслан", "Нургазы", "Тимур", "Нурик", "Асоль", "Астра", "Алина"]
let karate: Set<String> = ["Тилек", "Астра", "Тимур", "Алибек", "Бакыт", "Саламат", "Алина", "Анна"]


//10. Исходя из данных выше создайте коллекции всех имен кто ходит на спортивные занятия.

let allNames = swimming.union(karate)
print(allNames)


//11.Создайте коллекцию имен тех кто ходит на плавание и каратэ одновременно.
let sportPeople = swimming.intersection(karate)
print(sportPeople)


//12.Создайте коллекцию имен тех кто ходит только на  одно занятие.

let justOneActivity = swimming.symmetricDifference(karate)
print(justOneActivity)

