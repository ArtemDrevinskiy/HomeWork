//: [Previous](@previous)

import UIKit

// Task 3 Зарплата сотруднику


let grossSalary: Float = 2454

var netSalary = grossSalary - grossSalary * 0.44

var numbersAfterPoint: Float = netSalary.truncatingRemainder(dividingBy: 1)

if numbersAfterPoint > 0 {
    netSalary += 1
}

print("Final salary of worker is: \(Int(netSalary))$")


//: [Next](@next)
