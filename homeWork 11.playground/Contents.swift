import UIKit

var str = "Hello, playground"
//// dictionary
//let shirt3 = ["brand":"h&m", "color":"blue", "size":"48"]
//let car = ["manufacture":"Toyta", "color":"white", "body":"sedan"]
////
//let shirt2 = (brand:"H&M", color:"Blue", size:48)
//let car2 = (manufacture:"Toyota", color:"blue", body:"sedan")
//
////let brand = shirt2["brand"]
//let car3 = (manufacture:"toyota", color:"black", body:"sedan", wheels: 4, seats: 4, volume: 2.0, isNew: true, price: 25000)

// creating structures
// pustoe svoistvo
struct Shirt1 {
    
}
struct Car1 {
    
}
let car1: Car1 = Car1()
let shrit1: Shirt1 = Shirt1()

// svoistva s ekzemplyarem
struct Shirt {
    
    var brand: String
    var color: String
    var size: Int
    
}
var shirt1 = Shirt(brand: "Nike", color: "Green", size: 46)
var shirt2 = Shirt(brand: "h&m", color: "White", size: 48)

shirt1.brand
shirt1.size

shirt2.brand
shirt2.size

let shirtSize = shirt2.size

shirt2.size = 50
shirt2.size
shirt1.color = "Grey"

// initialization
let shirt3 = Shirt.init(brand: "D&G", color: "Black", size: 40)
let shirt4 = Shirt(brand: "Lacosta", color: "Grey", size: 42)

struct Car {
    var color: String = "Black"
    var wheels: Int = 4
    
    init(color: String) {
        self.color = color
    }
}

let car2 = Car(color: "Red")

//Structure methods

struct Shirt5 {
    var brand: String
    var color: String
    var size: Int
    
    func description() {
        print("Shirt \(self.brand), color - \(self.color) and \(self.size) size.")
    }
}

let shirt6 = Shirt5(brand: "Gap", color: "black", size: 10)


// my example

struct Lashes {
    var volume: String
    var effects: String
    var matterials: String
    var color: String
    var price: Double
}

var lashesAiperi = Lashes(volume: "3D", effects: "Doll", matterials: "Lovely", color: "Black", price: 120.0)


var lashesSalamat = Lashes(volume: "2D", effects: "Cat", matterials: "Lash Pro", color: "Brown", price: 110.5)

lashesAiperi.effects
lashesAiperi.color
lashesAiperi.price
lashesAiperi.matterials
lashesAiperi.volume
lashesAiperi.color = "Red"
lashesAiperi.color

lashesSalamat.color
lashesSalamat.effects
lashesSalamat.matterials
lashesSalamat.price
lashesSalamat.volume
lashesSalamat.volume = "5D"
lashesSalamat.volume

struct Truck {
    var model: Int
    var manufacter: String
    var weight: Double = 40
    var length: Double = 53
    var weels: Double = 18
    
    init(model: Int, manufacter: String) {
        self.model = model
        self.manufacter = manufacter
    }
}

var truckBakyt = Truck(model: 720, manufacter: "Volvo")
var truckErmek = Truck(model: 720, manufacter: "Freightliner")

truckBakyt.length
truckBakyt.manufacter
truckBakyt.model
truckBakyt.weels
truckBakyt.weight


struct LashesByAiperi {
    var volume: String
    var effects: String
    var matterials: String
    var color: String
    var price: Double
    
    func decription() {
        print(" Aiperi likes \(effects), color \(color), volume \(volume)")
    }
}

let lashesFromMe = LashesByAiperi(volume: "4D", effects: "Natural", matterials: "Lovely", color: "Black", price: 120.50)
lashesFromMe.decription()


struct Truck1 {
    var model: Int
    var manufacter: String
    var weight: Double = 40
    var length: Double = 53
    var weels: Double = 18
    var distance: Double
    var price: Double = 0.7
    
        
        func decription() {
            print("Model - \(self.model), \(self.distance), \(self.manufacter)")
        }
        
        mutating func sale(priceByMile: Double) {
            self.price = self.price * priceByMile
        }
    
}


var truckByBakyt = Truck1(model: 720, manufacter: "Volvo", distance: 3500)

truckByBakyt.distance
truckByBakyt.price
truckByBakyt.sale(priceByMile: 3500)
truckByBakyt.price

struct Shoes {
    var brand: String
    var size: Int
    var color: String
    var price: Double
    var model: String
}

var shoes = Shoes(brand: "Tulpar", size: 37, color: "Black", price: 200.99, model: "Classic")

var anotherShoes = shoes
print(shoes.brand)
print(anotherShoes.color)

shoes.color = "Red"
print(shoes.color)
print(anotherShoes.color)
anotherShoes.color = "Yellow"
print(anotherShoes.color)




