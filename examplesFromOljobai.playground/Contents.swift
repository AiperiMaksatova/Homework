import UIKit

var str = "Hello, playground"
// Основы функций
/// create func printMyName with ()
///Then print "My name is (enter your name)"
/// at the end, call your created fun


//1
func printMyName(firstName:String, lastName:String) {
    print("My name is \(firstName) \(lastName)")
}
printMyName(firstName: "Aiperi", lastName: "Maksatova")


//2


var iosArray = [String]()
let name8 = "Aiperi"
let profession = "ios Dev"
iosArray.append(name8)
iosArray.append(profession)



let name1 = "Jika"
let profession1 = "ios Dev"
iosArray.append(name1)
iosArray.append(profession1)


let name2 = "Bakyt"
let profession2 = "ios Dev"
iosArray.append(name2)
iosArray.append(profession2)
 

let name4 = "Alina"
let profession4 = "ios Dev"
iosArray.append(name4)
iosArray.append(profession4)
 

let name5 = "Alibek"
let profession5 = "ios Dev"
iosArray.append(name5)
iosArray.append(profession5)
 print(iosArray)

// then call your created var and give it the value (name) using append method
///
/// then call your created var and give it the value (profession) using append method
///
/// print (your created variably array) and finish func
///
/// call your created func and give it external parameters enter your name:, internal parameters indicate profession: "ios dev"
///
/// repeat the operation changing only the external parameter to another next name in turn
///
/// repeat the operation changing only the external parameter to another next name in turn
///
/// at the and print (your created array)






var simpleArray = [String]()
func addStudent (name: String, profession: String) {
    simpleArray.append(name)
    simpleArray.append(profession)
    print(simpleArray)
}
addStudent(name: "Aiperi", profession: "ios Dev")
addStudent(name: "Bakyt", profession: "ios Dev")
addStudent(name: "Jika", profession: "ios Dev")
addStudent(name: "Alibek", profession: "ios Dev")
addStudent(name: "Alina", profession: "ios Dev")


// example return Возвращаемые значения (Результаты)
/// create func calculate (boys: Int, girls: Int) return type Int {
///
/// in body enter 'return boys + girls'
///
/// finish func }
///
/// call your created func enter (boys: 10, girls: 10)
// return

//3
func calculate (boys: Int, girls: Int) -> Int {
    return boys + girls
}
let group = calculate(boys: 10, girls: 10)
print(group)



//4
// Arrays - Массивы
// create var usaStates - ["New Jersey", "New York", "California", "Texas"]
// FIND CAPITAL CITIES OF usaStates Array, then Create Array LET cities with said Capital.
//

var usaStates:[String] = ["New Jersey", "New York", "California", "Texas"]
let cities = ["Trenton", "Albany", "Sacramento", "Austin"]




//5
// create var statesDataArray with States year founded
// create var populationCityArray with [84.913, 97.856, 466.488, 842.592]
// create var tupleArray with [("STATE", "Capital"), ("STATE", "Capital")]
// create var boolArray, and assign the value of true, true, true, false in array.

var statesDataArray:[Int] = [1783, 1624, 1850, 1845]

var populationCityArray:[Double] = [84.913, 97.856, 466.488, 842.592]

var tupleArray:[String] = [("New Jersey, Trenton"), ("New York, Albany"),("California, Sacramento"),("Texas, Austin")]

var boolArray:[Bool] = [(true && true), (true && true), (true && true), (true && false)]
print(boolArray)


//6
/// Доступ к элементам массива
///
/// create let cityOfState with ["Trenton", "Albany", "Sacramento", "Austin"]
/// Fill the rest of the code, using Interpolation with Indexing Method
///
/// print("Capital of New Jersey is \
/// print("Capital of New York is \
/// print("Capital of California is
// print("Capital of Texas is \


let cityOfState = ["Trenton", "Alban", "Sacramento", "Austin"]

print("Capital of New Jersey is \(simpleArray[0])")
print("Capital of New York is \(simpleArray[1])")
print("Capital of California is\(simpleArray[2])")
print("Capital of Texas is\(simpleArray[3])")


//7
// Добавление элементов в массив
/// create var moreStates with array of ["New Jersey", "New York", "California", "Texas"]
/// add Florida using append
/// add Hawaii using inset( at: ) method AT 3,
/// remove last
/// remove all

var moreStates = ["New Jersey", "New York", "California", "Texas"]
moreStates.append("Florida")
moreStates.insert("Hawaii", at: 3)
moreStates.removeLast()
//moreStates.removeAll()
moreStates.remove(at: 1)
print(moreStates)


//8

let girls = ["Aiperi", "Jika", "Alina", "Asol", "Aya"]
let boys = ["Bakyt", "Oljobai", "Alibek", "Nurik", "Timur", "Tilek"]
var allGroup = girls + boys
print(allGroup)


//9
////Задача №1:
//В массиве, содержащем положительные и отрицательные целые числа, вычислить сумму четных положительных элементов.
//То есть найти в массиве положительные И четные элементы, затем найти их сумму.

var massive = [2,3,4,1,5,6,-1,-3,-6,-9]
var sum = 0

for total in massive {
    if total > 0 && total % 2 == 0 {
        sum += total
    } else {
        continue
    }
    print(sum)
}


var array = [1,2,3,4,5,6]
array.firstIndex(of: 4)


