//: [Previous](@previous)

import UIKit

// Task 2 Факториал.

let someNumber = 20

func factorialOfNumber(_ number: Int) -> Int {
    guard number <= 20 else {
        print("Sorry! Too big number!")
        return 0
    }
    if number <= 1 {
        return 1
    }
    var resultNumber = 1
    for num in 2...number {
        resultNumber *= num
    }
    return resultNumber
}

func recursionFactorialOfNumber(_ number: Int) -> Int {
    guard number <= 20 else {
        print("Sorry! Too big number!")
        return 0
    }
    guard number >= 1 else {
        return 1
    }
    return number * recursionFactorialOfNumber(_ : number - 1)
}

print("Factorial of \(someNumber) is: \(factorialOfNumber(_: someNumber))")
print("Factorial of \(someNumber) is: \(recursionFactorialOfNumber(_: someNumber))")

//: [Next](@next)
