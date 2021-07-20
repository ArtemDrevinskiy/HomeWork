//: [Previous](@previous)

import UIKit

// Task 4 Диагностик GPS


var latitude: Double = 54.43567
var longitude: Double = 25.54423
var coordinatesArray: [Double] = [latitude, longitude]

latitude = 0.43367
longitude = 25.54426
if latitude == coordinatesArray[0] && longitude == coordinatesArray[1] {
    print("Coordinates haven`t been changed")
}
if -90 > latitude || latitude > 90 {
    print("Please enter right latitude coordinate")
}
if -180 > longitude  || longitude > 180 {
    print("Please enter right longitude coordinate")
}






//: [Next](@next)
