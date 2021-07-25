//: [Previous](@previous)

import Foundation

//Функція вищого порядку — функція, що приймає як аргументи інші функції або повертає іншу функцію як результат.
// Example

func squared(function : (Int, Int) -> Int, firstNumber : Int, secondNumber : Int) -> Int{
    return function(firstNumber, secondNumber) * function(firstNumber, secondNumber)
}

func maxNumber(firstNumber : Int, secondNumber : Int) ->Int {
    if firstNumber > secondNumber {
        return firstNumber
    } else {
        return secondNumber
    }
}
print("Result: \(squared(function: maxNumber, firstNumber : 3, secondNumber : 2))")

//: [Next](@next)
