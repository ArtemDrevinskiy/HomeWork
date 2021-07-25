//: [Previous](@previous)

import UIKit

// Task 2 Факториал.

let someNumber = 20

func factorialOfNumber(number: Int) -> Int {
    guard number > 0 else {
        return 0
    }
    guard number != 1 else {
        return 1
    }
    guard number != 0 else {
        return 1
    }
    guard number <= 20 else {
        print("Sorry! Too big number!")
        return 0
    }
    var resultNumber = 1
    for num in 2...number {
        resultNumber *= num
    }
    return resultNumber
}

func recursionFactorial(number: Int) -> Int {
    guard number != 0 else {
        return 1
    }
    guard number > 0 else {
        return 0
    }
    guard number <= 20 else {
        print("Sorry! Too big number!")
        return 0
    }
    return number * recursionFactorial(number: number - 1)
}

print("Factorial of \(someNumber) is: \(factorialOfNumber(number: someNumber))")
print("Factorial of \(someNumber) is: \(recursionFactorial(number: someNumber))")

//: [Next](@next)
