//: [Previous](@previous)

import UIKit

// Task 1 Излишки корпоратива

let employees: Int = 37
let pizzaCount: Int = 5
let bottlesOfBeer: Int = 10

let pizzaSlicesLeft: Int = (pizzaCount * 12) - (employees * 2)
let litresOfBeerLeft: Double = ( Double(bottlesOfBeer) * 1.5 ) - ( Double(workers) * 0.5 )

if pizzaSlicesLeft == 1 {
    print("Only 1 slice of pizza is left for u")
} else if pizzaSlicesLeft > 1 {
    print("\(pizzaSlicesLeft) slices of pizza are left for u")
} else {
    print("Sorry, there is no pizza for u(")
}

if litresOfBeerLeft > 0
{
    print("\(litresOfBeerLeft) litres are left for u")
} else {
    print("Sorry, there is no beer for u(")
}

//: [Next](@next)
