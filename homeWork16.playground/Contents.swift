import UIKit

var str = "Hello, playground"

/* new
 1.Создайте перечисление для купюр (1$, 5$, 10$, 20$, 50$, 100$) со связанными значениями. Создайте массив содержащую перечисления из купюр например:
 
 let bankNoteArray: [BankNote] = [.one, .five, .ten, .ten, .hundred, .fifty]
 
 Создайте функцию которая может принимать массив из купюр и
возвращает сумму всех банкнот в массиве.
 */

enum BankNote: Int {
    case one = 1 ,five = 5, ten = 10, twenty = 20, fifty = 50, hundred = 100
}

let one = BankNote.one
one.rawValue

let bankNoteArray: [BankNote] = [.one, .five, .ten, .twenty, .fifty, .hundred]

func totalMoney(array: [BankNote]) -> Int {
    var sum  = 0
    for BankNote in array {
        sum += BankNote.rawValue
    }
    return sum
}
totalMoney(array: bankNoteArray )



 /*2.Создайте перечисление для категорий фильмов добавив минимум 5 категорий со связанными значениями. Добавьте вычисляемое свойство description которое будет возвращать короткое описание о данной категории.
 Например: Детектив– жанр, главный герои или герои которого пытаются найти решение какой-либо проблемы или раскрыть преступление.
 */
 
enum Film: String {
    case comedy = "Movie that makes you laugh"
    case documentary = "Real life Based Filmography"
    case scifi = "Scientific fiction movie"
    case romcom = "Romantic comedy"
    case horror = "Booohooo scary movie"
    
    var filename: String {
        "\(self.rawValue)"
    }
    func description() {
        print("This movie is \(self.filename)")
    }
}

Film.horror.filename
Film.comedy.filename
Film.romcom.filename
Film.documentary.filename

Film.comedy.description()

 /* 3.Создайте перечисление из трех жанров фильма (мультик, боевик, ужас) с ассоциированными значениями (и параметром description типа String для каждого члена).

 Создайте
 функцию которая будет принимать возраст и возвращать тип из трех жанров (если возраст от 0 до 12 возвращается жанр мультик от 12 до 18 возвращается жанр боевик если выше 18 то жанр ужас). При возвращении добавьте description к жанру
 Например: от 0 до 12 лет рекомендуется к просмотру жанр мультики и анимации.
 Создайте пример и жанр который вы получите от функции обработайте в конструкторе switch напечатав description.
 */

enum Film2 {
    case cartoon(description: String)
    case action(description: String)
    case horror(description: String)
}

func ageCantrol(age: Int) -> Film2 {
    if age >= 0 && age < 12 {
        return .cartoon(description: "Masha and Bear")
    } else if age >= 12 && age < 18 {
        return .action(description: "9 Rota")
    } else {
        return .horror(description: "Boohhooooo")
    }
}
 
let example = ageCantrol(age: 8)

switch example {
case .cartoon(let descriptionCartoon):
    print(descriptionCartoon)
case .action(let descriptionAction):
    print(descriptionAction)
case .horror(let descriptionHorror) :
    print(descriptionHorror)
}




/*
 4.Создайте структуру фильма со свойствами названия, года выпуска и жанра фильма. Для свойства жанра используйте перечисление из упражнения-2.
 Добавьте метод ageRating который будет возвращать строку с возрастной категорией советуемого к просмотру например: возрастной рейтинг к этому фильму с 12 и выше лет.
 */


struct Film3 {
  var name: String
  var year: Int
  var genres: Film

func ageRating() -> String {
    switch genres {
    case Film.comedy:
        return "возрастной рейтинг к этому фильму с 12 и выше лет"
    case Film.documentary:
        return "возрастной рейтинг к этому фильму с 16 и выше лет"
    case Film.horror:
        return "возрастной рейтинг к этому фильму с 18 и выше лет"
    default:
        return "возрастной рейтинг к этому фильму с 10 и выше лет"
        }
    }
}
var film = Film3(name: "9 Rota", year: 1987, genres: .horror)
film.genres
film.name
film.year
film.ageRating()




