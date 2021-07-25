//: [Previous](@previous)

import UIKit

// Task 2 Факториал.

let someNumber = 20

/// Лучше назвать метод `factorial(of number:)` или `factorialOfNumber(_ number:)`
/// Чтобы не видить в названии подряд 2 слова `number`
func factorialOfNumber(number: Int) -> Int {
    guard number > 0 else {
        return 0
    }
    /// Можно было сделать 1 guard вместо первых трех, например такой:
    /// guard number > 1 else {
    ///     return number
    /// }
    guard number != 1 else {
        return 1
    }
    /// Этот guard аналогичее первому и ни разу не сработает, потому что сработает первый :)
    guard number != 0 else {
        return 1
    }
    /// Хорошая проверка, лучше добавить ее первой :)
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

/// Лучше назвать метод `recursionFactorial(of number:)` или `recursionFactorialOfNumber(_ number:)`
func recursionFactorial(number: Int) -> Int {
    guard number != 0 else {
        return 1
    }
    guard number > 0 else {
        return 0
    }
    /// Аналогично, первые 2 guard можно сделать одним, смотри метод выше ^^
    guard number <= 20 else {
        print("Sorry! Too big number!")
        return 0
    }
    return number * recursionFactorial(number: number - 1)
}

print("Factorial of \(someNumber) is: \(factorialOfNumber(number: someNumber))")
print("Factorial of \(someNumber) is: \(recursionFactorial(number: someNumber))")

//: [Next](@next)
