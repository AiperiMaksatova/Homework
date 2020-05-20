import UIKit

var str = "Hello, playground"

struct TV {
    var height: Double
    var width: Double
    var diagonal: Int {
        get {
            let result = (height * height + width * width).squareRoot().rounded()
            return Int(result)
        }
        set {
            let ratioWidth = 16.0
            let ratioHeight = 9.0
            let ratioDiagonal = (ratioWidth * ratioWidth + ratioHeight * ratioHeight).squareRoot()
            
            height = Double(newValue) * ratioHeight / ratioDiagonal
            width = height * ratioHeight / ratioHeight
        }
    }
}

var tv = TV(height: 48, width: 98)

tv.height
tv.width
tv.diagonal


