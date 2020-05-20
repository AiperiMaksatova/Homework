import UIKit

var str = "Hello, playground"

//1.Реализуйте структуру Employee, описывающую работника. Структура должна обладать следующими характеристиками:
//-свойство, описывающее имя, фамилию, специальность, годовую зарплату, недельную зарплату, месячную зарплату.
//(Недельная и месячная зарплата должны быть вычисляемыми свойствами с возможностью назначения нового значения)
// - метод, возвращающий информацию о работнике (профессия - имя - фамилия - годовая зарплата), и метод для изменения годовой зарплаты.
// - создайте экземпляр работника, получите месячную и недельную зарплату. Назначьте новую недельную зарплату и проверьте изменилась ли годовая зарплата? Используйте метод для измения годовой зарплаты и вызовите метод для получения информации о работнике.
//
struct Employee {
    var name: String
    var surname: String
    var speciality: String
    var salaryForYear: Int
    var salaryForMonth: Int {
        get {
            let salary = salaryForYear / 12
            return Int(salary)
        }
        set {
            salaryForYear = newValue * 12
        }
    }
    var salaryForWeek: Int {
        
        get {
        let salary = salaryForYear / 48
            return Int(salary)
        }
        set {
            salaryForYear = newValue * 48
            }
        }
    func getInfo() {
        print("Speciality is \(self.speciality), Name is \(self.name), Surname is \(self.surname), Salary per year is \(self.salaryForYear) ")
    }
}

var aiperi = Employee(name: "Aiperi", surname: "Maksatova", speciality: "ios dev", salaryForYear: 250000)

aiperi.getInfo()
aiperi.name
aiperi.salaryForMonth
aiperi.salaryForWeek
aiperi.salaryForYear
aiperi.speciality
aiperi.surname








//2.Реализуйте структуру TVSeries, описывающую телевизионный сериал. Структура должна обладать следующими характеристиками: -свойство, описывающее название, сезон, коллекция серий (с номером и булевым значением в зависимости просмотрена серия или нет ввиде словаря) и статичное свойство типа показывающий номер последней просмотренной серии (значение по умолчанию ноль).

//-сабскрипт с параметром номера серии и возвращающий три значения(“серия просмотрена”, “серия не просмотрена”, “такой серии нет”) в зависимости от наличия номера серии в коллекции и булева значения о просмотре.
    // - метод который будет назначать номер серии как просмотренный (если номер серии несуществует в коллекции метод должен напечатать в отладке что такой серии нет) и проверять если номер серии самый последний то менять номер свойства типа на новое значение.
// - создайте экземпляр сериала добавив восемь серий со значениями false. Затем используйте метод для просмотра первых двух серий, попробуйте просмотреть 9 серию. Проверьте свойство типа который показывает номер последней просмотренной серии она должна показать вторую серию. Используйте сабскрипт для первой, третьей и девятой серии какие значения выполучили?


struct TVSeries {
    
  static var lastFilmNum = 0
  var name: String
  var season: Int
  var series: [Int : Bool]
    
  subscript (seriesNum: Int) -> String {
    if series[seriesNum] ?? false {
      return "Просмотрено"
    } else if series[seriesNum] ?? true {
      return "Такой серии нет"
    } else {
      return "Не Просмотрено"
    }
  }
  mutating func modifySeriesNum (seriesNum: Int){
    if series[seriesNum] == true || series[seriesNum] == false {
    series[seriesNum]! = true
        TVSeries.lastFilmNum = seriesNum
    } else {
      print ("Такой серии нет")
    }
  }
}


var example = TVSeries(name: "XXX", season: 7, series: [1:false, 2:false, 3:false, 4:false, 5:false, 6:false, 7:false, 8:false])

example.modifySeriesNum(seriesNum: 1)
example.series[1]
example.series[2]
example.modifySeriesNum(seriesNum: 2)
example.series[2]
example.modifySeriesNum(seriesNum: 9)
TVSeries.lastFilmNum

example[1]
example[2]
example[3]
example[4]
example[5]
example[6]
example[7]
example[8]
example[9]
example[10]


var newSeries = TVSeries(name: "Spartac", season: 1, series: [1:false, 2:false, 3:false, 4:false])
newSeries.modifySeriesNum(seriesNum: 4)
newSeries.series[4]
newSeries[4]
newSeries[1]
newSeries[3]
newSeries[5]
TVSeries.lastFilmNum





