import UIKit

var str = "Hello, playground"

struct EyeGlass {
  var brand: String = "Chanel"
  var color: String = "Brown"
  var model: String = "Aviator"
  var price: Double = 500
    
    init(brand: String) {
        self.brand = brand
    }
}
var glass = EyeGlass(brand: "D&G")

